<#import "parts/common.ftl" as c>
<@c.page>
    <title>Reset Password</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link href="//fonts.googleapis.com/css?family=Ubuntu+Mono|Open+Sans:400,700,400italic" rel="stylesheet" type="text/css">
    <style>
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
            background: radial-gradient(690px at 50% 50%,rgba(9,156,236,.87) 0,rgba(6,109,165,.87) 100%);
        }
        .log-form {
            width: 40%;
            min-width: 320px;
            max-width: 475px;
            background: #fff;
            position: absolute;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            -moz-transform: translate(-50%, -50%);
            -o-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.25);
        }
        @media (max-width: 40em) {
            .log-form {
                width: 95%;
                position: relative;
                margin: 2.5% auto 0 auto;
                left: 0%;
                -webkit-transform: translate(0%, 0%);
                -moz-transform: translate(0%, 0%);
                -o-transform: translate(0%, 0%);
                -ms-transform: translate(0%, 0%);
                transform: translate(0%, 0%);
            }
        }
        .log-form form {
            display: block;
            width: 100%;
            padding: 2em;
        }
        .log-form h2 {
            color: #5d5d5d;
            font-family: 'open sans condensed';
            font-size: 1.35em;
            display: block;
            background: #2a2a2a;
            width: 100%;
            text-transform: uppercase;
            padding: 0.75em 1em 0.75em 1.5em;
            box-shadow: inset 0px 1px 1px rgba(255, 255, 255, 0.05);
            border: 1px solid #1d1d1d;
            margin: 0;
            font-weight: 200;
        }
        .log-form input {
            display: block;
            margin: auto auto;
            width: 100%;
            margin-bottom: 2em;
            padding: 0.5em 0;
            border: none;
            border-bottom: 1px solid #eaeaea;
            padding-bottom: 1.25em;
            color: #757575;
        }
        .log-form input:focus {
            outline: none;
        }
        .log-form .btn {
            display: inline-block;
            background: #1fb5bf;
            border: 1px solid #1ba0a9;
            padding: 0.5em 2em;
            color: white;
            margin-right: 0.5em;
            box-shadow: inset 0px 1px 0px rgba(255, 255, 255, 0.2);
        }
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        * {
            box-sizing: border-box;
        }
        body, html {
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
            display:table;
        }
        body {
            display:table-cell;
            vertical-align:middle;
        }
        form {
            display:table;/* shrinks to fit content */
            margin:auto;
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
        element.style {
            padding: 0px;
            position: relative;
            width: 100%;
            border: none;
            outline: none;
            background-color: rgba(0, 0, 0, 0);
            color: rgb(112, 120, 125);
            cursor: initial;
            font: inherit;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
            height: 100%;
        }
        input {
            line-height: normal;
        }
        .styles__more__3Rrtw a:first-child {
            padding-left: 0;
            text-align: right;
            padding-right: 20px;
            border-right: 1px solid #066da5;

        }
        .styles__more__3Rrtw a {
            text-decoration: none;
            color: #066da5;
            text-align: left;
            padding-left: 20px;
        }
        body, html {
            min-height: 100%;
            font-family: Open Sans,sans-serif;
            color: #099cec;
            font-size: 13px;
            -webkit-tap-highlight-color: rgba(0,0,0,0);
            -webkit-touch-callout: none;
            -webkit-text-size-adjust: 100%;
            -ms-text-size-adjust: 100%;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

    </style>

<div style="">
    <div class="log-form">
        <form  method="post">
            <p style="text-align: center; font-size: 13px; color:red;">
                ${NotExistUser?ifExists}</p>
            <div style="display: flex; align-items: center; justify-content: center;">
                <i style="font-size: 70px;"  class="fab fa-expeditedssl"></i>
            </div>
            <br>
            <div style="font-style: normal; line-height: normal; text-align: center; color: #066da5; font-size: 28px; ">
                Reset your
            </div>
            <div style="font-weight: 600; font-size: 28px; text-align: center; margin-bottom: 12px;">
                Password
            </div>
            <div class="form-group row">
                <div class="col-sm-12">
                    <input type="text" class="form-control" name="email"  placeholder="Email" required>
                </div>
            </div>

            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <div style="display: flex; align-items: center; justify-content: center;">
                <button type="submit" class="btn btn-primary" style="background-color: #099cec; border-color: #099cec; width: 150px; "><b style="font-size: 16;">Send</b></button>
            </div>
        </form>
        <div style=" height: 7em; display: flex; align-items: center; justify-content: center; margin-top: 0;">
            <div style="font-size: 16;" ><a style="text-decoration: none;" href="/login"><b>Go to Login</b></a>
            </div>
        </div>
        </form>
    </div>
</div>
</@c.page>