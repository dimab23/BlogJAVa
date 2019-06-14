<#macro login path>
    <form action="${path}" method="post">
        <p style="text-align: center; font-size: 12px; color:#ffaa43;">
            ${message?ifExists}</p>
        <p style="text-align: center; font-size: 12px; color:dodgerblue;"> ${email1?ifExists}</p>
        <p style="text-align: center; font-size: 12px; color:dodgerblue;"> ${activeAccount?ifExists}</p>
        <p style="text-align: center; font-size: 12px; color:#ff7428;"> ${messageEroor?ifExists}</p>
        <p style="text-align: center; font-size: 12px; color:#ffaa43;"> ${Password?ifExists}</p>
        <p style="text-align: center; font-size: 12px; color: red;">${errorMessge?ifExists}</p>

            <div style="display: flex; align-items: center; justify-content: center;">
                <i style="font-size: 60px;" class="far fa-user-circle"></i>
            </div>
        <br>

        <div style="font-style: normal; line-height: normal; text-align: center; color: #066da5; font-size: 28px; ">
            Sign in with your
        </div>
        <div style="font-weight: 600; font-size: 28px; text-align: center; margin-bottom: 12px;">
            Email
        </div>
            <div class="form-group row">
                <div class="col-sm-12">
                    <input type="text" class="form-control" name="username"  placeholder="Email" class="fas fa-low-vision" required>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-12">
                    <input type="password" class="form-control" name="password"  placeholder="Password" required>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>

        <div style="display: flex; align-items: center; justify-content: center;">
            <button type="submit" class="btn btn-primary" style="background-color: #099cec; border-color: #099cec; width: 150px; "><b style="font-size: 14;"> Sign In</b></button>
        </div>
    </form>
    <div style=" height: 7em; display: flex; align-items: center; justify-content: center; margin-top: 0;">
        <div class="styles__more__3Rrtw"><a href="/forgout_password">Forgot Password?</a>
            <a href="/registration">Create Account</a>
        </div>
    </div>
</#macro>