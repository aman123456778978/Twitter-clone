package tech.codingclub.helix.controller;

import com.google.gson.Gson;
import org.apache.log4j.Logger;
import org.jooq.Condition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.*;
import tech.codingclub.helix.global.SysProperties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.*;
import java.util.concurrent.Callable;


@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

    @RequestMapping(method = RequestMethod.POST, value = "/create-post")
    public
    @ResponseBody
    String createTweet(@RequestBody String data, HttpServletRequest request, HttpServletResponse response) {
        Tweet tweet=new Tweet(data,null,new Date().getTime(),ControllerUtils.getUserId(request));
         new GenericDB<Tweet>().addRow(tech.codingclub.helix.tables.Tweet.TWEET,tweet);
        return "Posted successfully";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/follow-member/{member_id}")
    public
    @ResponseBody
    String followMember(@PathVariable("member_id") Long memberId, HttpServletRequest request, HttpServletResponse response) {
       Long currentUserId=ControllerUtils.getUserId(request);
       if(currentUserId!=null && memberId!=null && !currentUserId.equals(memberId))
       {
           Follower follower=new Follower(currentUserId,memberId);
           new GenericDB<Follower>().addRow(tech.codingclub.helix.tables.Follower.FOLLOWER,follower);
           return "Connected successfully";
       }
       else{
           return "Not permitted !";
       }
    }

    @RequestMapping(method = RequestMethod.POST, value = "/un-follow-member/{member_id}")
    public
    @ResponseBody
    String unfollowMember(@PathVariable("member_id") Long memberId, HttpServletRequest request, HttpServletResponse response) {
        Long currentUserId=ControllerUtils.getUserId(request);
        if(currentUserId!=null && memberId!=null && !currentUserId.equals(memberId))
        {
            //delete a relation between currentuserid and the person it is following ,,in follower table
            Condition condition=tech.codingclub.helix.tables.Follower.FOLLOWER.USER_ID.eq(currentUserId).and(tech.codingclub.helix.tables.Follower.FOLLOWER.FOLLOWING_ID.eq(memberId));
            boolean success=GenericDB.deleteRow(tech.codingclub.helix.tables.Follower.FOLLOWER,condition);
            if(success) {
                return "Un followed successfully";
            }
            else{
                return "Not permitted !";
            }
        }
        return "Backend-error";
    }


    @RequestMapping(method = RequestMethod.GET, value = "/recommendations")
    public String welcome(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        Member member=ControllerUtils.getCurrentMember(request);

            //access only when user is logined
        List<Member> members=(List<Member>) GenericDB.getRows(tech.codingclub.helix.tables.Member.MEMBER,Member.class,null,10,tech.codingclub.helix.tables.Member.MEMBER.ID.desc());
        ArrayList<Long>memberIds=new ArrayList<Long>();
        for(Member m:members){
            memberIds.add(m.id);
        }
        Condition condition=tech.codingclub.helix.tables.Follower.FOLLOWER.USER_ID.eq(member.id).and(tech.codingclub.helix.tables.Follower.FOLLOWER.FOLLOWING_ID.in(memberIds));
      List<Follower> followerRows= (List<Follower>) GenericDB.getRows(tech.codingclub.helix.tables.Follower.FOLLOWER,Follower.class,condition,null);
      //filter all
        Set<Long> followedMemberIds=new HashSet<Long>();

        for(Follower follower:followerRows)
        {
            followedMemberIds.add(follower.following_id);
        }
        for(Member memberTemp:members)
        {
            if(followedMemberIds.contains(memberTemp.id)){
                //this member is followed already
                memberTemp.is_followed=true;
            }
        }

            modelMap.addAttribute("NAME", member.name);
            modelMap.addAttribute("RECOMMENDATIONS", members);

        return "recommendations";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/followed")
    public String followed(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        Long currentMemberId=ControllerUtils.getUserId(request);

        Condition condition=tech.codingclub.helix.tables.Follower.FOLLOWER.USER_ID.eq(currentMemberId); //jinka user id current member id se match krta h

        // getting followedids jo current member ne follow kiye h
        List<Long>followedIds=new GenericDB<Long>().getColumnRows(tech.codingclub.helix.tables.Follower.FOLLOWER.FOLLOWING_ID,tech.codingclub.helix.tables.Follower.FOLLOWER,Long.class,condition,100);
        // now get these follwedids from main table jisme sare accounts h..signup kiya tha jinhone
        Condition selectMemberCondition=tech.codingclub.helix.tables.Member.MEMBER.ID.in(followedIds);
        List<Member> followedMembers=(List<Member>) GenericDB.getRows(tech.codingclub.helix.tables.Member.MEMBER,Member.class,selectMemberCondition,10,tech.codingclub.helix.tables.Member.MEMBER.ID.desc());

        modelMap.addAttribute("FOLLOWED",followedMembers);
        return "followed";
    }


}