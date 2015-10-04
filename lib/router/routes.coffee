FlowRouter.route '/',
  name: "home"
  action: (params, queryParams) ->
    BlazeLayout.render 'masterLayout', 
      header: "header"
      main: "home"
      footer: "footer"

FlowRouter.notFound =
  action: (params, queryParams) ->
    BlazeLayout.render 'masterLayout',
      header: "header"
      main: "pageNotFound"
      footer: "footer"

AccountsTemplates.configureRoute 'changePwd'
AccountsTemplates.configureRoute 'forgotPwd'
AccountsTemplates.configureRoute 'resetPwd'
AccountsTemplates.configureRoute 'signIn'
AccountsTemplates.configureRoute 'signUp'
AccountsTemplates.configureRoute 'verifyEmail'
