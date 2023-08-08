<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en" class=""><link type="text/css" rel="stylesheet" id="dark-mode-custom-link"><link type="text/css" rel="stylesheet" id="dark-mode-general-link"><style lang="en" type="text/css" id="dark-mode-custom-style"></style><style lang="en" type="text/css" id="dark-mode-native-style"></style><style lang="en" type="text/css" id="dark-mode-native-sheet"></style><head><link type="text/css" rel="stylesheet" id="dark-mode-custom-link"><link type="text/css" rel="stylesheet" id="dark-mode-general-link"><style lang="en" type="text/css" id="dark-mode-custom-style"></style><style lang="en" type="text/css" id="dark-mode-native-style"></style><style lang="en" type="text/css" id="dark-mode-native-sheet"></style><link type="text/css" rel="stylesheet" id="dark-mode-custom-link"><link type="text/css" rel="stylesheet" id="dark-mode-general-link"><style lang="en" type="text/css" id="dark-mode-custom-style"></style><style lang="en" type="text/css" id="dark-mode-native-style"></style><style lang="en" type="text/css" id="dark-mode-native-sheet"></style><link type="text/css" rel="stylesheet" id="dark-mode-custom-link"><link type="text/css" rel="stylesheet" id="dark-mode-general-link"><style lang="en" type="text/css" id="dark-mode-custom-style"></style><style lang="en" type="text/css" id="dark-mode-native-style"></style><style lang="en" type="text/css" id="dark-mode-native-sheet"></style>
      <meta charset="UTF-8">
      <link href="https://fonts.googleapis.com/css?family=DM+Sans&amp;display=swap" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
      <script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>

      <link rel="stylesheet" href="/static/css/recommendation.css">
   </head>
   <body>


      <div id="root">
         <div>
            <div class="layout">
               <div class="layout_wrapper">
                  <div class="layout_header">
                     <div class="navbar navbar--header">
                        <div class="navbar_container">
                           <div class="navbar_header">
                              <a class="navbar_brand" href="#/">
                                 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                    <path d="M24 13.313c0-2.053-.754-3.026-1.417-3.489.391-1.524 1.03-5.146-.963-7.409-.938-1.065-2.464-1.54-4.12-1.274-1.301-.557-3.266-1.141-5.5-1.141s-4.199.584-5.5 1.141c-1.656-.266-3.182.208-4.12 1.274-1.993 2.263-1.353 5.885-.963 7.409-.663.463-1.417 1.435-1.417 3.489 0 .996.326 2.131.986 3.102-.485 1.421.523 3.049 2.283 2.854-.318 1.622 1.365 2.928 3.082 2.128-.201 1.163 1.421 2.58 3.443 1.569.671.572 1.188 1.034 2.204 1.034 1.155 0 1.846-.643 2.277-1.035 2.022 1.012 3.574-.406 3.374-1.569 1.718.8 3.4-.506 3.082-2.128 1.76.195 2.768-1.433 2.283-2.854.659-.97.986-2.106.986-3.101zm-12 6.57c-1.722 0-2.4-1.883-2.4-1.883h4.8s-.612 1.883-2.4 1.883zm3.578-2.992c-1.052-.515-2.455-1.126-3.578-.322-1.124-.804-2.526-.193-3.578.322-4.251 2.08-8.024-4.023-5.842-5.444.204-.132.488-.135.672-.053.661.292 1.406-.191 1.406-.914 0-2.214.692-4.434 2.154-5.988l.015-.01c2.604-2.596 7.741-2.596 10.345 0l.016.011c1.462 1.554 2.154 3.774 2.154 5.987 0 .726.748 1.205 1.406.914.141-.063.436-.1.671.053 2.15 1.392-1.514 7.561-5.841 5.444zm.172-7.391c-1.124 0-2.094.629-2.607 1.546-.373-.116-.744-.174-1.143-.174s-.77.058-1.143.174c-.513-.917-1.483-1.546-2.607-1.546-1.654 0-3 1.346-3 3s1.346 3 3 3c1.231 0 2.285-.748 2.747-1.811.246-.566.394-1.301 1.003-1.301s.758.735 1.003 1.301c.462 1.063 1.516 1.811 2.747 1.811 1.654 0 3-1.346 3-3s-1.346-3-3-3zm-7.5 4.5c-.828 0-1.5-.672-1.5-1.5s.672-1.5 1.5-1.5 1.5.672 1.5 1.5-.672 1.5-1.5 1.5zm7.5 0c-.828 0-1.5-.672-1.5-1.5s.672-1.5 1.5-1.5 1.5.672 1.5 1.5-.672 1.5-1.5 1.5z"></path>
                                 </svg>
                              </a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="layout_content">
                     <div class="feed">
                        <div class="feed_header">
                           <h1 class="feed_title">Recommendations for you :)</h1>
                        </div>

<c:forEach var="member" items="${RECOMMENDATIONS}">
   <div class="feed_item">
      <div class="joke">
         <div class="joke_wrapper">
            <div class="joke_block joke_block--header">
               <span class="joke_element joke_element--author-name">${member.name}</span><span class="joke_element joke_element--author-username">${member.email}</span>
               <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>

            </div>
                    <c:if test="${not member.is_followed}">
                        <button class="follow-member" member-id="${member.id}" type="submit" tabindex="0" style="margin-top: 12px;">
                        <span tabindex="-1">Follow</span>
                        </button>
                    </c:if>
                    <c:if test="${member.is_followed}">
                       <button class="follow-member followed-button" member-id="${member.id}" type="submit" tabindex="0" style="margin-top: 12px;">
                             <span tabindex="-1">Followed</span>
                             </button>
                    </c:if>
         </div>
      </div>
   </div>
</c:forEach>


                        <div class="feed_footer">
                           <div class="pagination pagination--infinite-scroll"><button class="pagination_button_next">Load more...</button></div>
                        </div>
                     </div>
                  </div>
                  <div class="layout_footer">
                     <div class="section section--search">
                        <form class="form form--search-form"><input placeholder="Search dad jokes..."></form>
                     </div>
                     <div class="section">
                        <div class="section_block section_block--header">
                           <h3 class="section_title">Trending now!</h3>
                        </div>
                        <div class="section_block section_block--content">
                           <ul class="nav">
                              <li class="nav_item"><a class="nav_link" href="#/search/Dad/1"><span class="nav_link_text nav_link_text--primary">#Dad</span><span class="nav_link_text nav_link_text--secondary">Jokes</span></a></li>
                              <li class="nav_item"><a class="nav_link" href="#/search/Walk/1"><span class="nav_link_text nav_link_text--primary">#Walk</span><span class="nav_link_text nav_link_text--secondary">Jokes</span></a></li>
                              <li class="nav_item"><a class="nav_link" href="#/search/What/1"><span class="nav_link_text nav_link_text--primary">#What</span><span class="nav_link_text nav_link_text--secondary">Jokes</span></a></li>
                           </ul>
                        </div>
                     </div>
                     <div class="section">
                        <div class="section_block section_block--header">
                           <h3 class="section_title">What's this?</h3>
                        </div>
                        <div class="section_block section_block--content">
                           <p>What if Twitter consisted only of dad jokes? Well that's the idea behind this pen.</p>
                           <p>Also, it was the occasion to redesign Twitter based on the july 2019 #newtwitter teasing, all done from tiny screenshots.</p>
                           <p>The jokes are fetched from icanhazdad.com API, users are added locally, everything else is Preact or react-router v5: feed, pagination, search, routing, etc.</p>
                           <p>There's a LOT of movies/video games references here. Can you spot them all?</p>
                        </div>
                     </div>
                     <div class="section">
                        <div class="section_block section_block--content">/</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
       <script type="text/javascript" src="/static/js/user.js">

            </script>



</body></html></script></body></html>