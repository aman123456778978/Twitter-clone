
<html lang="en" class="">
   <head>
      <meta charset="UTF-8">
      <link href="https://fonts.googleapis.com/css?family=DM+Sans&amp;display=swap" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
      <script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>

      <style class="INLINE_PEN_STYLESHEET_ID">
         :root {
         --background: #ffffff;
         --cs-primary: #25b9f4;
         --cs-surface: #ffffff;
         --cs-surface-2: #eef4f8;
         --cs-separator: #e8ecf0;
         --cs-on-surface-primary: #000000;
         --cs-on-surface-secondary: #657786;
         --font-family-primary: "DM Sans", Aria, sans-serif;
         --joke-author-img-width: 60px;
         --joke-width: 480px;
         --layout-container-width: 920px;
         }
         * {
         box-sizing: border-box;
         }
         html,
         body {
         background: var(--background);
         font-family: var(--font-family-primary);
         font-size: 14px;
         line-height: 1.42;
         height: 100%;
         }
         #root {
         height: 100%;
         }
         .joke {
         background-color: var(--cs-surface);
         padding: 15px;
         min-height: calc(33px + var(--joke-author-img-width));
         transition: background-color 0.25s;
         }
         .joke:focus,
         .joke:hover {
         background-color: var(--cs-surface-2);
         }
         .joke_wrapper {
         margin-left: calc(1.25 * var(--joke-author-img-width));
         }
         .joke_block {
         position: relative;
         }
         .joke_block--header .joke_element {
         display: inline-block;
         margin-right: 7px;
         }
         .joke_element--author-img {
         height: var(--joke-author-img-width);
         left: calc(-1.25 * var(--joke-author-img-width));
         position: absolute;
         top: 3px;
         width: var(--joke-author-img-width);
         }
         .joke_element--author-img img {
         border-radius: 50%;
         max-width: 100%;
         }
         .joke_element--author-name {
         color: var(--cs-on-surface-primary);
         font-weight: bold;
         }
         .joke_element--author-username {
         color: var(--cs-on-surface-secondary);
         }
         .joke_element {
         margin: 0;
         }
         .joke_block--text {
         font-size: 18px;
         margin-top: 7px;
         }
         .joke_block--footer {
         margin-top: 12px;
         }
         .layout {
         height: 100%;
         }
         .layout_wrapper {
         display: grid;
         grid-template-columns: 140px 480px 1fr;
         height: 100%;
         margin: auto;
         width: var(--layout-container-width);
         }
         .layout_header {
         background-color: var(--cs-surface);
         height: 100%;
         }
         .layout_content {
         border-left: 1px solid var(--cs-separator);
         border-right: 1px solid var(--cs-separator);
         width: var(--joke-width);
         }
         .layout_footer {
         padding: 20px;
         }
         .feed_header {
         border-bottom: 1px solid var(--cs-separator);
         padding: 20px;
         }
         .feed {
         margin-bottom: 60px;
         }
         .feed_title {
         font-size: 20px;
         font-weight: bolder;
         margin: 0;
         }
         .feed_subtitle {
         color: var(--cs-on-surface-secondary);
         margin: 0;
         margin-top: 7px;
         }
         .feed_item {
         border-bottom: 1px solid var(--cs-separator);
         }
         .feed_error {
         padding: 40px;
         text-align: center;
         }
         .feed_error_icon {
         fill: hsla(197, 20%, 92%, 1);
         height: 90px;
         width: 90px;
         }
         .feed_error_title {
         color: var(--cs-on-surface-primary);
         font-weight: bold;
         margin: 0;
         margin-top: 1.3em;
         }
         .feed_error_text {
         color: var(--cs-on-surface-secondary);
         margin: 0;
         margin-top: 0.7em;
         }
         .navbar--header {
         background-color: #ffffff;
         /*box-shadow: 0 5px 30px hsla(197 , 75%, 55%, .08);*/
         position: relative;
         }
         .navbar_block {
         padding: 8px;
         }
         .navbar_header {
         display: flex;
         justify-content: flex-end;
         }
         .navbar_brand {
         display: block;
         padding: 20px 20px;
         }
         .navbar_brand svg {
         display: block;
         fill: var(--cs-primary);
         height: 34px;
         width: 34px;
         }
         .form--search-form input {
         -webkit-appearance: none;
         background-color: #e8ecf0;
         border: 2px solid #e8ecf0;
         border-radius: 25px;
         font-size: 12px;
         line-height: 1;
         outline: none;
         padding: 8px 12px;
         width: 100%;
         }
         .form--search-form input::placeholder {
         font-style: italic;
         }
         .form--search-form input:focus {
         border: 2px solid var(--cs-primary);
         }
         .nav {
         list-style: none;
         margin: 0;
         padding: 0;
         }
         .nav--joke_rebound .nav_item {
         display: inline-block;
         margin-right: 70px;
         }
         .nav--joke_rebound .nav_link svg {
         display: block;
         fill: var(--cs-on-surface-secondary);
         height: 20px;
         margin-right: 5px;
         width: 20px;
         }
         .nav--joke_rebound .nav_link {
         align-items: center;
         color: var(--cs-on-surface-secondary);
         display: flex;
         text-decoration: none;
         }
         .nav--joke_rebound .nav_link:hover {
         color: var(--cs-primary);
         }
         .nav--joke_rebound .nav_link:hover svg {
         fill: var(--cs-primary);
         }
         .pagination--infinite-scroll .pagination_button_next {
         background-color: #ffffff;
         border-color: transparent;
         color: var(--cs-primary);
         cursor: pointer;
         letter-spacing: 0.045em;
         padding: 20px;
         width: 100%;
         }
         .section {
         background-color: var(--cs-surface-2);
         border-radius: 10px;
         margin-bottom: 20px;
         }
         .section--search {
         background-color: #ffffff;
         }
         .section_block {
         padding: 15px;
         }
         .section_block--header {
         border-bottom: 1px solid var(--cs-separator);
         }
         .section_block--content p {
         margin: 0;
         margin-bottom: 1em;
         }
         .section_title {
         margin: 0;
         }
         .nav_item + .nav_item {
         margin-top: 10px;
         }
         .nav_link {
         color: var(--cs-on-surface-primary);
         text-decoration: none;
         }
         .nav_link_text--primary {
         color: var(--cs-on-surface-primary);
         display: block;
         font-weight: bold;
         font-size: 16px;
         }
         .nav_link_text--secondary {
         color: var(--cs-on-surface-secondary);
         }

         textarea {
             border: 0;
             border-radius: 0.5em;
             box-shadow: 0 0 0 0.1em #a8ceee inset;
             margin: 0 auto 0.75em auto;
             padding: 0.75em;
             resize: none;
             width: 100%;
             height: 5em;
         }
         .bottom {
             display: flex;
             justify-content: flex-end;
             align-items: center;
         }
         .bottom > span {
             margin-right: 0.75em;
         }
         button {
             background-color: #55abee;
             border: 0;
             color: #fff;
             display: inline-block;
             font-weight: bold;
         }
         button span {
             display: block;
             padding: 0.75em 1.5em;
             transition: all 0.1s linear;
         }
         button, button span {
             border-radius: 1.5em;
         }
      </style>
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
                           <h1 class="feed_title">Home</h1>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <textarea id="tweet-message" rows="3" placeholder="What's happening?"></textarea>
                              <div class="bottom">
                              <span data-limit="280">280</span>
                              <button id="create-tweet" type="submit" tabindex="0" >
                              <span tabindex="-1">Tweet</span>
                              </button>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Macready</span><span class="joke_element joke_element--author-username">@realBigDaddy</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">Why didn’t the skeleton cross the road? Because he had no guts.</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Johnny Silverhand</span><span class="joke_element joke_element--author-username">@GetUpAndBurn</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">What did one nut say as he chased another nut?  I'm a cashew!</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Johnny Silverhand</span><span class="joke_element joke_element--author-username">@GetUpAndBurn</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">Chances are if you' ve seen one shopping center, you've seen a mall.</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Macready</span><span class="joke_element joke_element--author-username">@realBigDaddy</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">I knew I shouldn't steal a mixer from work, but it was a whisk I was willing to take.</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Steve Zissou</span><span class="joke_element joke_element--author-username">@aquaticJoker</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">How come the stadium got hot after the game? Because all of the fans left.</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Keanuuuu Reeeeves</span><span class="joke_element joke_element--author-username">@youre_breathtaking</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">Why was it called the dark ages? Because of all the knights. </div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Keanuuuu Reeeeves</span><span class="joke_element joke_element--author-username">@youre_breathtaking</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">A steak pun is a rare medium well done.</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Macready</span><span class="joke_element joke_element--author-username">@realBigDaddy</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">Why did the tomato blush? Because it saw the salad dressing.</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Johnny Silverhand</span><span class="joke_element joke_element--author-username">@GetUpAndBurn</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">Did you hear the joke about the wandering nun? She was a roman catholic.</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">John</span><span class="joke_element joke_element--author-username">@wicked_but_not_retired</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">What creature is smarter than a talking parrot? A spelling bee.</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Cameron Poe</span><span class="joke_element joke_element--author-username">@ConExRanger</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">I'll tell you what often gets over looked... garden fences.</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Macready</span><span class="joke_element joke_element--author-username">@realBigDaddy</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">Why did the kid cross the playground? To get to the other slide.</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Castor (or Sean)</span><span class="joke_element joke_element--author-username">@castor.troy</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">Why do birds fly south for the winter? Because it's too far to walk.</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Murray</span><span class="joke_element joke_element--author-username">@murray_head</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">What is a centipedes's favorite Beatle song?  I want to hold your hand, hand, hand, hand...</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Steve Zissou</span><span class="joke_element joke_element--author-username">@aquaticJoker</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">My first time using an elevator was an uplifting experience. The second time let me down.</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Murray</span><span class="joke_element joke_element--author-username">@murray_head</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">To be Frank, I'd have to change my name.</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Keanuuuu Reeeeves</span><span class="joke_element joke_element--author-username">@youre_breathtaking</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">Slept like a log last night … woke up in the fireplace.</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">Keanuuuu Reeeeves</span><span class="joke_element joke_element--author-username">@youre_breathtaking</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <div class="joke_block joke_block--text">Why does a Moon-rock taste better than an Earth-rock? Because it's a little meteor.</div>
                                 <div class="joke_block joke_block--footer">
                                    <ul class="nav nav--joke_rebound">
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--upvotes" href="#">
                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                             </svg>
                                             4
                                          </a>
                                       </li>
                                       <li class="nav_item">
                                          <a class="nav_link nav_link--downvotes" href="#">
                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                             </svg>
                                             339
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
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
      <script>

      $("#create-tweet").click( function(){
          $.ajax({
            type: "POST",
            url: "/user/create-post",
            data: document.getElementById("tweet-message").value,
            success: function(response){
                if(!!response){
                   alert(response);
                }
            },
            contentType: 'application/json'
          });

        });
      </script>
   </body>
</html>