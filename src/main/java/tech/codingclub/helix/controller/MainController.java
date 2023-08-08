package tech.codingclub.helix.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.apache.log4j.Logger;
import org.springframework.http.HttpEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.HashMap;


@Controller
@RequestMapping("/") //this will hear to slash
public class MainController extends BaseController {

    private static Logger logger = Logger.getLogger(MainController.class);

    @RequestMapping(method = RequestMethod.GET, value = "/helloworld") //if u type http://localhost:8080/helloworld then u will get hello
    public String getQuiz(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "hello"; //it is returning jsp related to hello
    }

    @RequestMapping(method = RequestMethod.GET, value = "/welcome")
    public String welcome(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        Member x=ControllerUtils.getCurrentMember(request);
        if(x!=null) {
            //access only when user is logined
            modelMap.addAttribute("NAME", x.name);
            return "welcome";
        }
        return "welcomelogin";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/signup")
    public String signup(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "signup";
    }
    @RequestMapping(method = RequestMethod.GET, value = "/bug")
    public @ResponseBody String bug(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        int i=10/0; //now this is a error so here base controller will be called and the error will be shown
        return "inside the bug";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/signup")
    public
    @ResponseBody
    SignupResponse signupData(@RequestBody Member member, HttpServletRequest request, HttpServletResponse response) {
        boolean user_created=false;
        String message="";
        if(GenericDB.getCount( tech.codingclub.helix.tables.Member.MEMBER,tech.codingclub.helix.tables.Member.MEMBER.EMAIL.eq(member.email))>0)
        {
                message="user already exist for this email id !";
        }
        else {
            member.role="cm";
            new GenericDB<Member>().addRow(tech.codingclub.helix.tables.Member.MEMBER, member);
            user_created=true;
            message="user created !";
        }
        return new SignupResponse(message,user_created);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/api/time")
    public  @ResponseBody String geTime(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        TimeApi timeApi=new TimeApi(new Date().toString(),new Date().getTime());
        return new Gson().toJson(timeApi);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/api/wiki")
    public  @ResponseBody String geWikiResultjson(ModelMap modelMap,@RequestParam("country") String country, HttpServletResponse response, HttpServletRequest request) {
        WikipediaDownloader wikipediaDownloader=new WikipediaDownloader(country);
        WikiResult x=wikipediaDownloader.getResult();
        return new Gson().toJson(x);
    }

    //@ResponseBody have not use in this because we are returning a jsp file but in above case we want to send our string
    @RequestMapping(method = RequestMethod.GET, value = "/api/wiki/html")
    public String geWikiResulthtml(ModelMap modelMap,@RequestParam("country") String country, HttpServletResponse response, HttpServletRequest request) {
        WikipediaDownloader wikipediaDownloader=new WikipediaDownloader(country);
        WikiResult x=wikipediaDownloader.getResult();
        modelMap.addAttribute("IMAGE",x.getImageUrl()); // going to add to jsp file wikiapi
        modelMap.addAttribute("DESCRIPTION",x.getResponse());
        return "wikiapi";
    }


    @RequestMapping(method = RequestMethod.POST, value = "/handle")
    public
    @ResponseBody
    String handleEncrypt(@RequestBody String data, HttpServletRequest request, HttpServletResponse response) {
        return "ok";
    }
}