<#import "parts/common.ftl" as c>
<@c.page>

<title>Blog JAVA</title>

    <!-- Compiled and minified Css -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

     <style>
         @media print {
             .container {
                 width: auto;
             }
         }
        @font-face {
            font-family: 'Open Sans';
            font-style: normal;
            font-weight: 300;
            src: local('Open Sans Light'), local('OpenSans-Light'), url(https://fonts.gstatic.com/s/opensans/v16/mem5YaGs126MiZpBA-UN_r8OUuhs.ttf) format('truetype');
        }
        @font-face {
            font-family: 'Open Sans';
            font-style: normal;
            font-weight: 400;
            src: local('Open Sans Regular'), local('OpenSans-Regular'), url(https://fonts.gstatic.com/s/opensans/v16/mem8YaGs126MiZpBA-UFVZ0e.ttf) format('truetype');
        }
        @font-face {
            font-family: 'Open Sans';
            font-style: normal;
            font-weight: 600;
            src: local('Open Sans SemiBold'), local('OpenSans-SemiBold'), url(https://fonts.gstatic.com/s/opensans/v16/mem5YaGs126MiZpBA-UNirkOUuhs.ttf) format('truetype');
        }
        @font-face {
            font-family: 'Open Sans Condensed';
            font-style: normal;
            font-weight: 300;
            src: local('Open Sans Condensed Light'), local('OpenSansCondensed-Light'), url(https://fonts.gstatic.com/s/opensanscondensed/v13/z7NFdQDnbTkabZAIOl9il_O6KJj73e7Ff1GhDuXMQg.ttf) format('truetype');
        }
        @font-face {
            font-family: 'Open Sans Condensed';
            font-style: normal;
            font-weight: 700;
            src: local('Open Sans Condensed Bold'), local('OpenSansCondensed-Bold'), url(https://fonts.gstatic.com/s/opensanscondensed/v13/z7NFdQDnbTkabZAIOl9il_O6KJj73e7Ff0GmDuXMQg.ttf) format('truetype');
        }
        * {
            box-sizing: border-box;
        }
        body {
            font-family: 'open sans', helvetica, arial, sans;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        * {
            box-sizing: border-box;
        }

        /* Add padding to containers */
        .container {
            padding: 16px;
            background-color: white;
        }

        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

        input[type=text]:focus, input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }

        /* Overwrite default styles of hr */
        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }
        a {
            color: dodgerblue;
        }
        button {
            background-color: Transparent;
            background-repeat:no-repeat;
            border: none;
            cursor:pointer;
            overflow: hidden;
            outline:none;
        }
             button:focus { outline: none; box-shadow: none !important; }
        .navbar-brand{
            border-color: white;
        }
        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml,<svg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'><path stroke='white' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/></svg>") !important;
        }
         .styles__welcomeBox___5mYOc {
             width: 100%;
             background: linear-gradient(116.41deg,#099cec 32.82%,#6bc3f3 93.88%);
             box-shadow: 0 1px 2px #c2c2c2;
             color: #fff;
             text-align: center;
             font-weight: 600;
             padding: 12px;
         }

         * {
             box-sizing: border-box;
         }
         div {
             display: block;
         }

         Style Attribute {
             cursor: default;
         }
         body, html {
             min-height: 100%;
             font-family: Open Sans,sans-serif;
             color: #27343b;
             font-size: 14px;
             overflow-x: hidden;
             -webkit-tap-highlight-color: rgba(0,0,0,0);
             -webkit-touch-callout: none;
             -webkit-text-size-adjust: 100%;
             -ms-text-size-adjust: 100%;
             -webkit-font-smoothing: antialiased;
             -moz-osx-font-smoothing: grayscale;
         }
         html {
             font-family: sans-serif;
             -ms-text-size-adjust: 100%;
             -webkit-text-size-adjust: 100%;
         }
         {
             box-sizing: border-box;
         }

         div {
             display: block;
         }
         .styles__welcomeBox___5mYOc .styles__tutorialButton___1iOSx button {
             width: 300px;
         }
         [type=reset], [type=submit], button, html [type=button] {
             -webkit-appearance: button;
         }
         .styles__inverted___1iL73 {
             border-color: #fff;
             background-color: #fff;
             color: #099cec;
         }
         .styles__button___21omF {
             box-sizing: border-box;
             -webkit-user-select: none;
             -moz-user-select: none;
             -ms-user-select: none;
             user-select: none;
             position: relative;
             outline: 0;
             display: inline-block;
             -webkit-box-align: center;
             -ms-flex-align: center;
             align-items: center;
             border-style: solid;
             white-space: nowrap;
             text-align: center;
             font-weight: 700;
             font-style: inherit;
             -webkit-font-feature-settings: inherit;
             font-feature-settings: inherit;
             font-variant: inherit;
             font-family: inherit;
             text-decoration: none;
             overflow: hidden;
             transition: background-color .4s cubic-bezier(.25,.8,.25,1),border-color .6s cubic-bezier(.25,.8,.25,1);
             padding: 0 10px;
             margin: 6px 8px;
             min-width: 88px;
             line-height: 32px;
             min-height: 32px;
             border-width: 2px;
             border-radius: 3px;
             font-size: 14px;
             color: #fff;
             cursor: pointer;
         }
         button, select {
             text-transform: none;
         }
         button, input {
             overflow: visible;
         }
         button, input, select, textarea {
             font: inherit;
             margin: 0;
         }
         * {
             box-sizing: border-box;
         }

         button {
             padding: 1px 6px;
         }

         button {
             align-items: flex-start;
             text-align: center;
             cursor: default;
             color: buttontext;
             background-color: buttonface;
             box-sizing: border-box;
             padding: 2px 6px 3px;
             border-width: 2px;
             border-style: outset;
             border-color: buttonface;
             border-image: initial;
         }

         button {
             text-rendering: auto;
             color: initial;
             letter-spacing: normal;
             word-spacing: normal;
             text-transform: none;
             text-indent: 0px;
             text-shadow: none;
             display: inline-block;
             text-align: start;
             margin: 0em;
             font: 400 13.3333px Arial;
         }

         button {
             -webkit-writing-mode: horizontal-tb !important;
         }
         wrapped {
             -webkit-box-flex: 1;
             -ms-flex: 1 auto;
             flex: 1 auto;
         }
         .wrapped {
                 margin: 0 auto;
                 width: 100%;
                 max-width: 1280px;
         }

         html {
                 font-family: sans-serif;
                 -ms-text-size-adjust: 100%;
                 -webkit-text-size-adjust: 100%;
         }
         html {
                 color: -internal-root-color;
         }
         .styles__homeWelcome___znAUb {
                         padding-top: 0;
         }
         .styles__home___y_Nj1 {
                         position: relative;
                         width: 100%;
                         overflow: hidden;
         }
         @media only screen and (max-width: 600px!)
             .styles__home___y_Nj1 {
                 padding: 12px!important;
         }
         @media (min-width: 600px)
                     .wrapped {
                         padding-left: 12px!important;
                         padding-right: 12px!important;
         }
             button {
                 background-color: Transparent;
                 background-repeat:no-repeat;
                 border: none;
                 cursor:pointer;
                 overflow: hidden;
                 outline:none;
             }
     </style>



    <nav class="navbar navbar-expand-lg"  style="background-color: #099cec;">
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText"style="margin-left: 16%!important;" >
            <ul class="navbar-nav mr-auto" >
                <li class="nav-item active">
                    <a class="nav-link" style="color: #fff; padding-top: 4px; " href="/add_article"><b>Create Article</b><span class="sr-only"></span></a>
                </li>
            </ul>
            <span class="navbar-text" style="margin-right: 20%!important;">
                  <div class="btn-group">
                            <button type="button" style="background-color: Transparent; border-color:#099cec; background-repeat:no-repeat; border: none;" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              ${user} &nbsp; &nbsp; <i style="font-size: 30px;" class="fas fa-fingerprint"></i>
                            </button>

                        <div class="dropdown-menu" style="width: 190px;right: 0%; margin-left: auto; margin-right: auto; margin-top: 4px!important; width: 190px; right: 0; position: absolute; box-shadow: 0 2px 5px 0 rgba(0,0,0,.26);">
                            <a class="dropdown-item" href="/my_profile">My Profile</a>

                            <button type="button" data-toggle="modal" data-target="#exampleModalCenter1" class="dropdown-item" style="height: 28px;font-family: Open Sans,sans-serif; font-size: 14;">My Notification &nbsp;&nbsp; &nbsp;&nbsp;
                                <#if countNotification != 0>
                                    <span class="badge badge-primary badge-pill" style="background-color: red!important; ">${countNotification}</span>
                                <#else>
                                    <span class="badge badge-primary badge-pill" style="background-color: #dddddd!important; ">${countNotification}</span>
                                </#if>
                            </button>
                            <div class="dropdown-divider"></div>
                            <form class="form-inline" action="/logout" method="post">
                                <button type="submit" class="dropdown-item">
                                    <p   style="color: #e12b0c;font-family: Open Sans,sans-serif; font-size: 14;"><b>Log out</b></p>
                                </button>
                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            </form>
                         </div>
                  </div>
            </span>
    </nav>

    <#list articlesdb as article>
        <div class="styles__homeWelcome___znAUb styles__home___y_Nj1">
            <div class="wrapped">
                <div class="styles__welcomeBox___5mYOc" style="margin-top: 3%!important; margin-bottom: 3%!important;max-width: calc(100% - 24px); margin: auto; box-shadow: 0 1px 2px #c2c2c2!important;">

                    <div style="padding-top: 60px; padding-bottom: 30px; font-size: 16px;"><i>- Author</i> ${article.users.first_name?replace('<[^>]+>','','r')}  ${article.users.last_name?replace('<[^>]+>','','r')}</div>
                    <div style="font-size: 44px; line-height: 46px; padding-bottom: 20px;"><a class="nav-link" style="color: white;" href="articles/${article.id}">${article.title?replace('<[^>]+>','','r')}</a></div>
                    <div style="font-size: 12px; font-weight: 500; padding-bottom: 40px;">${article.content?replace('<[^>]+>','','r')}</div>
                    <#if email == article.users.email>
                        <div class="styles__tutorialButton___1iOSx">
                            <button type="button" data-toggle="modal" data-target="#exampleModalCenter" class=" styles__button___21omF styles__primary-consolidated___3wafe styles__inverted___1iL73" style="color: #099cec; ">Delete Article &nbsp;&nbsp;&nbsp;
                                <i style="font-size: 12px;" class="fas fa-trash"></i>
                            </button>
                        </div>
                    </#if>
                </div>

            </#list>
            <#if articles.getTotalPages() != 1>
            <div class="wrapped" style="max-width: calc(100% - 24px); display: flex; align-items: center; justify-content: center;">
                <ul class="pagination"  style="width: 100%;font-weight: 600;">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1">Page</a>
                    </li>
                    <#list 1..articles.getTotalPages() as p>
                        <#if p == articles.getNumber()+1>
                            <li class="page-item active">
                                <a class="page-link" href="/?page=${p-1}">${p} <span class="sr-only"></span></a>
                            </li>
                        <#else >
                            <li class="page-item">
                                <a class="page-link" href="/?page=${p-1}"> ${p}<span class="sr-only"></span></a>
                            </li>
                        </#if>
                    </#list>
                </ul>
            </div>
            </#if>
         </div>
    </div>
    <#list articlesdb as article>
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Delete Article:</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-warning" role="alert">
                            Are you sure you want to delete this item?
                        </div>
                    </div>
                    <form action="/delete" method="post">
                        <div class="modal-footer">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <input type="hidden" name="id" value="${article.id}">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-outline-warning">Delete</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </#list>

    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle" style="font-size: 15px; color: #099cec;">My Notification &nbsp;&nbsp; <i class="fas fa-bell"></i></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <#if coutByNotification !=0>
                    <#list notification as n>
                        <div class="modal-body">
                            <#if n.seen !=false>
                                <div class="alert alert-light" role="alert" style="margin-bottom: 0px!important; important; text-align: center;">
                                    <b style="font-size: 15px;"><i class="far fa-user"> &nbsp;&nbsp;</i>
                                        <a href="/articles/${n.articles.id}">${n.users.first_name?replace('<[^>]+>','','r')} &nbsp; ${n.users.last_name?replace('<[^>]+>','','r')}<b style="color: #1d1d1d; font-size: 12px;"> ${n.status} </b></a>
                                        <button type="submit" style=" margin-right: 0 !important;   margin-left:auto !important;   display:block !important;">
                                            <i style="font-size: 20px;" class="fas fa-envelope-open"></i>
                                        </button>
                                    </b>
                                    <div style="margin-top: 0px; font-size: 10px; text-align: center;">
                                        <b style="color: #1d1d1d; "> ${n.date}</b></div>
                                </div>
                            <#else>
                                <form method="post" action="/open_notification">
                                    <div class="alert alert-info" role="alert" style="margin-bottom: 0px!important; text-align: center;">
                                        <button type="submit">  <b style="font-size: 15px;"><i class="far fa-user"> &nbsp;&nbsp;</i>
                                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                                <input type="hidden" name="id_articles" value="${n.articles.id}">
                                                <input type="hidden" name="id" value="${n.id}">
                                                ${n.users.first_name?replace('<[^>]+>','','r')} &nbsp; ${n.users.last_name?replace('<[^>]+>','','r')}<b style="color: #1d1d1d; font-size: 12px;"> ${n.status} </b>
                                                <button type="submit" style=" margin-right: 0 !important;   margin-left:auto !important;   display:block !important;">
                                                    <i style="font-size: 20px;"  class="fas fa-envelope"></i>
                                                </button>
                                            </b>
                                            <div style="margin-top: 0px; font-size: 10px; text-align: center;">
                                                <b style="color: #1d1d1d; "> ${n.date}</b></div>
                                    </div>
                                    </button>
                                </form>
                            </#if>
                        </div>
                    </#list>
                <#else>
                    <div class="styles__container___1hTq9 styles__empty___2NhPc">
                        <div style="text-align: center; font-size: 50px; color: #099cec;">
                            <i class="fas fa-exclamation-triangle"></i></div>
                        <div style="text-align: center;">
                            <b style="font-size: 15px; color: #099cec;">Not Notification</b></div>
                    </div>
                </#if>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</@c.page>