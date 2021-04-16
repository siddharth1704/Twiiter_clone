<html lang="en" class="">
   <head>
      <meta charset="UTF-8">
      <link href="https://fonts.googleapis.com/css?family=DM+Sans&amp;display=swap" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
      <script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.js"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
      <link rel="shortcut icon" type="image/png" href="/static/images/twitter.ico"/>
      <link rel="stylesheet" type="text/css" href="/static/css/main.css">
   </head>
   <body>
      <div id="root">
         <div>
            <div class="layout">
               <div class="layout_wrapper">
                  <jsp:include page="template/navbar.jsp"/>
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
                        <div id="tweet-content">
                        </div>
                        <script id="tweet_template" type="text/x-handlebars-template">
                           {{#data}}
                              <div class="feed_item">
                                                         <div class="joke">
                                                            <div class="joke_wrapper">
                                                               <div class="joke_block joke_block--header">
                                                                  <span class="joke_element joke_element--author-name">{{author_name}}</span><span class="joke_element joke_element--author-username">{{email}}</span>
                                                                  <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                                               </div>
                                                               <div class="joke_block joke_block--text">{{message}}</div>
                                                               <div class="joke_block joke_block--footer">
                                                                  <ul class="nav nav--joke_rebound">
                                                                     <li class="nav_item">
                                                                        <a class="nav_link nav_link--upvotes" href="#">
                                                                        <i class="far fa-heart"></i>
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
                           {{/data}}
                        </script>

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
                      window.location.reload();
                   }
               },
               contentType: 'application/json'
             });

           });
        var tweet_ui_source=$("#tweet_template").html();
        var tweet_template=Handlebars.compile(tweet_ui_source);

        window.lastSeenTweet=9999999;
        function showTweets(){
         $.ajax({
               type: "POST",
               url: "/user/public-tweet/"+window.lastSeenTweet,
               success: function(response){
               if(!!response){
                  var tweet_data={
                        data:response
                     };
               var size=response.length;
               window.lastSeenTweet=response[size-1].id;
               $("#tweet-content").append(tweet_template(tweet_data));
               }
                                               },
              contentType: 'application/json'
          });
         }
         showTweets();
          $(".pagination--infinite-scroll").click(function(){
                showTweets();
               });
      </script>
   </body>
</html>