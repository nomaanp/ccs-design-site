app.post '/contact', (req, res) ->
  mailOpts = undefined
  smtpTrans = undefined
  #Setup Nodemailer transport, I chose gmail. Create an application-specific password to avoid problems.

  console.log('tufan')
  smtpTrans = nodemailer.createTransport('SMTP',
    service: 'Gmail'
    auth:
      user: 'me@gmail.com'
      pass: 'application-specific-password')
  #Mail options
  mailOpts =
    from: req.body.name + ' &lt;' + req.body.email + '&gt;'
    to: 'me@gmail.com'
    subject: 'Website contact form'
    text: req.body.message
  smtpTrans.sendMail mailOpts, (error, response) ->
    #Email not sent
    if error
      res.render 'contact',
        title: 'Raging Flame Laboratory - Contact'
        msg: 'Error occured, message not sent.'
        err: true
        page: 'contact'
    else
      res.render 'contact',
        title: 'Raging Flame Laboratory - Contact'
        msg: 'Message sent! Thank you.'
        err: false
        page: 'contact'
    return
  return