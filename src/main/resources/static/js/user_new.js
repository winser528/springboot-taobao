/* *
 * 会员登录
 */
function userLogin_new() {
    var username = $("#username").val();
    var password = $("#password").val();
    var captcha = $("#captcha").val();
    var autologin = $("#autologin").attr("checked");
    if (autologin == "checked" || autologin == true) {
        autologin = 1;
    } else {
        autologin = 0;
    }
    var act = $("#act").val();
    var back_act = $("#back_act").val();
    var msg = '';
    if (username.length == 0) {
        msg = '用户名不能为空';
    }
    if (password.length == 0) {
        msg = '密码不能为空';
    }
    if (username.length == 0 && password.length == 0) {
        msg = '用户名和密码不能为空';
    }
    if (msg.length > 0) {
        $("#login_message").text(msg);
        return false;
    } else {
        $.ajax({
            type: "POST", url: "/loginUser", data: $("#formLogin").serialize(), dataType: "json", beforeSend: function () {
                $("#login_message").text("稍等...");
            }, success: function (data) {
                switch (data.code) {
                    case 'error':
                        $("#login_message").text("用户名或密码错误");
                        $("#password").val("");
                        break;
                    case 'captcha_error':
                        $("#login_message").text("验证码错误");
                        break;
                    case 'success':
                        $("#login_message").text("登录成功！正在跳转，请稍候...");
                        window.location.href = data.back_act;
                        break;
                    default :
                        $("#login_message").text(data.msg);
                        break;
                }
            }
        });
        return false;
    }
}

/* *
 * 处理注册
 */
function is_registered(username) {
    var submit_disabled = false;
    if (username == '') {
        $("#username_notice").text("用户名不能为空");
        var submit_disabled = true;
    } else if (username.length < 3) {
        $("#username_notice").text("用户名长度不能少于 3 个字符");
        var submit_disabled = true;
    } else if (username.length > 25) {
        $("#username_notice").text("用户名长度不能大于 25 个字符");
        var submit_disabled = true;
    }
    if (!chkstr(username)) {
        $("#username_notice").text("用户名含有非法字符");
        var submit_disabled = true;
    }

    if (submit_disabled) {
        $('#submit').attr("disabled", "disabled");
        return false;
    }
    if (!submit_disabled) {
        $("#username_notice").text("可以注册");
        $('#submit').removeAttr("disabled");
    }
    $.ajax({
        type: "POST", url: "/registerVerify", data: $("#formLogin").serialize(), dataType: "json", success: function (data) {
            if (data.code == "success") {
                $("#username_notice").text("可以注册");
                $('#submit').removeAttr("disabled");
            } else {
                $("#username_notice").text("用户名已经存在,请重新输入");
                $('#submit').attr("disabled", "disabled");
            }
        }
    });
}

function is_registerpwd(password) {
    var submit_disabled = false;
    if (password == '') {
        $("#password_notice").text("密码不能为空");
        var submit_disabled = true;
    } else if (password.length < 6) {
        $("#password_notice").text("密码长度不能少于6 个字符");
        var submit_disabled = true;
    } else {
        $("#password_notice").text("验证成功");
        $('#submit').removeAttr("disabled");
        return true;
    }
    if (submit_disabled) {
        $('#submit').attr("disabled", "disabled");
        return false;
    }

}

function is_register_conpwd(password) {
    var submit_disabled = false;
    var confirm_password = Utils.trim($("#password").val());
    if (password == '') {
        $("#conform_password_notice").text("密码不能为空");
        var submit_disabled = true;
    } else if (password != confirm_password) {
        $("#conform_password_notice").text("两次密码不一致");
        var submit_disabled = true;
    } else {
        $("#conform_password_notice").text("验证成功");
        $('#submit').removeAttr("disabled");
        return true;
    }
    if (submit_disabled) {
        $('#submit').attr("disabled", "disabled");
        return false;
    }
}

function is_registeremail(email) {
    var submit_disabled = false;

    if (email == '') {
        $("#email_notice").text("邮箱不能为空");
        var submit_disabled = true;
    } else if (!ismail(email)) {
        $("#email_notice").text("邮箱格式错误");
        var submit_disabled = true;
    }
    if (submit_disabled) {
        $('#submit').attr("disabled", "disabled");
        return false;
    }
    if (!submit_disabled) {
        $("#email_notice").text("邮箱正确");
        $('#submit').removeAttr("disabled");
    }
    $.ajax({
        type: "POST", url: "/registerVerify", data: "email=" + email, dataType: "json", success: function (data) {
            if (data.code == "success") {
                $("#email_notice").text("可以注册");
                $('#submit').removeAttr("disabled");
            } else {
                $("#email_notice").text("邮箱已经存在,请重新输入");
                $('#submit').attr("disabled", "disabled");
            }
        }
    });
}

function chkstr(str) {
    for (var i = 0; i < str.length; i++) {
        if (str.charCodeAt(i) < 127 && !str.substr(i, 1).match(/^\w+$/ig)) {
            return false;
        }
    }
    return true;
}

function ismail(mail) {
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if (filter.test(mail)) return true; else {
        //alert('您的电子邮件格式不正确');
        return false;
    }
}

/* *
 * 处理注册用户
 */
function register_new() {
    var username = Utils.trim($("#username").val());
    var email = $("#email").val();
    var password = Utils.trim($("#password").val());
    var password_len = password.length;
    var confirm_password = Utils.trim($("#confirm_password").val());
    var checked_agreement = $("#agreement").attr("checked");
    var act = $("#act").val();
    var return_url = $("#return_url").val();
    var captcha = $("#captcha").val();
    var captcha_have = $("#captcha_have").val();
    var msg = '';
    /*if (!username.match(/\'\/^\\s*$|^c:\\\\con\\\\con$|[%,\\*\\"\\s\\t\\<\\>\\&\'\\\\]/)){
        $("#username_notice").text("用户名只能是由字母数字以及下划线组成，且不能含敏感字符");
        msg = 'user';
    }*/
    if (username == "") {
        $("#username_notice").text("请输入注册用户名");
        msg = 'user';
    } else if (username.length < 3) {
        $("#username_notice").text("用户名长度不能少于 3 个字符");
        msg = 'user';
    } else if (username.length > 25) {
        $("#username_notice").text("用户名长度不能大于 25 个字符");
        msg = 'user';
    }
    if (email == "" || !email.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)) {
        $("#email_notice").text("请正确输入注册邮箱");
        msg = 'email';
    }

    if (password == "" || password_len < 6) {
        $("#password_notice").text("密码不能为空，且不能小于六位数");
        msg = 'pass';
    } else {
        $("#password_notice").text("");
    }

    if (confirm_password == "" || password != confirm_password) {
        $("#conform_password_notice").text("确认密码不能为空，且两次密码输入必须相同");
        msg = 'pass2';
    } else {
        $("#conform_password_notice").text("");
    }
    if (captcha == "" && captcha_have == "1") {
        $("#captcha_notice").text("请输入验证码");
        msg = 'captcha';
    }
    if (checked_agreement != "checked" && checked_agreement != true) {
        $("#agreement_notice").text("您没有同意用户协议");
        msg = 'check';
    }

    if (msg != "") {
        $("#reg_notice").text("");
        $('#submit').attr("disabled", "disabled");
        return false;
    }
    $.ajax({
        type: "POST", url: "/registerUser", data: $("#formUser").serialize(), dataType: "json", beforeSend: function () {
            $("#reg_notice").text("稍等...");
        }, success: function (data) {
            switch (data.code) {
                case 'error':
                    $("#reg_notice").text("注册不成功，换个用户名试试？^_^");
                    if (captcha_have == "1") {
                        $("#captcha").attr("value", '');// 清空内容
                    }
                    break;
                case 'success':
                    $("#reg_notice").text("恭喜你！注册成功！正在跳转，请稍候...");
                    window.location.href = return_url;
                    break;
                case 'captcha_empty':
                    $("#captcha_notice").text("请输入验证码");
                    $("#reg_notice").text("");
                    break;
                case 'captcha_error':
                    $("#captcha_notice").text("验证码错误");
                    $("#captcha").val('');
                    $("#reg_notice").text("");
                    break;
                case 'user_exists':
                    $("#reg_notice").text("用户名已存在");
                    if (captcha_have == "1") {
                        $("#captcha").val('');
                    }
                    break;
                case 'email_exists':
                    $("#reg_notice").text("邮箱已被占用");
                    if (captcha_have == "1") {
                        $("#captcha").val('');
                    }
                    break;
                default :
                    $("#reg_notice").text("出错了！");
                    if (captcha_have == "1") {
                        $("#captcha").val('');
                    }
                    break;
            }
        }
    });
}

/* *
 * 更换验证码
 */
function change_captcha() {
    $("#captcha_img").click();
}

/* *
 * 会员找回密码时，对输入作处理
 */
function submitPwdInfo_new() {
    var username = Utils.trim($("#username").val());
    var email = $("#email").val();
    var act = $("#act").val();
    var msg = '';
    if (username.length == 0) {
        $("#username_notice").text("请输入用户名");
        msg = 'user';
    }
    if (email == "" || !email.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)) {
        $("#email_notice").text("请正确输入邮箱地址");
        msg = 'email';
    }
    if (username.length > 0) {
        $("#username_notice").text("");
    }
    if (email != "" && email.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)) {
        $("#email_notice").text("");
    }
    if (msg != "") {
        $("#send_notice").text("");
        return false;
    }
    $.ajax({
        type: "POST", url: "./ajax_user.php", data: $("#formUser").serialize(), dataType: "text", beforeSend: function () {
            $("#send_notice").text("稍等...");
        }, success: function (data) {
            switch (data) {
                case 'send_error':
                    $("#send_notice").text("发送邮件错误");
                    break;
                case 'match_error':
                    $("#send_notice").text("您填写的用户名与电子邮件地址不匹配，请重新输入！");
                    break;
                case 'send_success':
                    $("#username").val('');
                    $("#email").val('');
                    $("#send_notice").text("我们已经往您的  " + email + " 邮箱发送了一封重设密码邮件，请查收！");
                    //sendagain();
                    break;
                default :
                    $("#send_notice").text("出错了！");
                    break;
            }
        }
    });
}

/*var count=60;
var interval_label;
function sendagain(){
	$("#submit").attr("src","");
	$("#sendagain").text('还有'+count+"秒可以重新发送");
	interval_label = setInterval(loadTime_new,1000);
}
function loadTime_new(){
	count--;
	$("#sendagain").text('还有'+count+"秒可以重新发送");
	if(count==0){
		clearInterval(interval_label);
		$("#sendagain").text("");
		$("#submit").attr("src","images/wjmm_01.gif");
		count=60;
	}
}*/

/* *
 * 会员找回密码时，对输入作处理
 */
function submitPwd_new() {
    var new_password = $("#new_password").val();
    var password_len = new_password.length;
    var confirm_password = $("#confirm_password").val();
    var act = $("#act").val();
    var uid = $("#uid").val();
    var code = $("#code").val();
    var msg = '';
    if (new_password == "" || password_len < 6) {
        $("#new_password_notice").text("密码不能为空，且不能小于六位数");
        msg = 'pass';
    }
    if (confirm_password == "" || new_password != confirm_password) {
        $("#conform_password_notice").text("确认密码不能为空，且两次密码输入必须相同");
        msg = 'pass2';
    }
    if (new_password != "" && password_len > 5) {
        $("#new_password_notice").text("");
    }
    if (confirm_password != "" && new_password == confirm_password) {
        $("#conform_password_notice").text("");
    }
    if (msg != "") {
        $("#edit_password_notice").text("");
        return false;
    }
    $.ajax({
        type: "POST", url: "./user.php", data: $("#formUser").serialize(), dataType: "text", beforeSend: function () {
            $("#edit_password_notice").text("稍等...");
        }, success: function (data) {
            switch (data) {
                case 'error':
                    $("#edit_password_notice").text("修改密码失败");
                    break;
                case 'success':
                    $("#new_password").val('');
                    $("#confirm_password").val('');
                    $("#edit_password_notice").text("修改密码成功，请重新登录");
                    window.location.href = 'user.php?act=login';
                    break;
                default :
                    $("#edit_password_notice").text("正在跳转......！");
                    window.location.href = 'user.php?act=login';
                    break;
            }
        }
    });
}