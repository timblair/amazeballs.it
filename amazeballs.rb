class Amazeballs
  PHOTOS = [
    "http://i.imgur.com/Wm5wzui.png",
    "http://i.imgur.com/bfuK0Zz.png",
    "http://i.imgur.com/SmxFVrk.png",
    "http://i.imgur.com/vs5VwaE.png",
    "http://i.imgur.com/A7qtrnJ.png",
    "http://i.imgur.com/TpQYpt0.png",
    "http://i.imgur.com/c3kqgoH.png",
    "http://i.imgur.com/rte8NaD.png",
    "http://i.imgur.com/F2Hu4En.png",
    "http://i.imgur.com/uSGjEa2.png",
    "http://i.imgur.com/VzFAz4A.png",
    "http://i.imgur.com/4bRCudp.png",
    "http://i.imgur.com/K2cexOw.png",
    "http://i.imgur.com/uVlm31d.png",
    "http://i.imgur.com/8KWUsi1.png",
    "http://i.imgur.com/ODvIcnE.png",
    "http://i.imgur.com/YnDRp3c.png",
    "http://i.imgur.com/qKPEy5e.png",
    "http://i.imgur.com/0HBekYg.png",
    "http://i.imgur.com/5FNOUpM.png"
  ]

  def call(env)
    if env["REQUEST_PATH"] == "/"
      [200, {"Content-Type" => "text/html"}, [index]]
    elsif env["REQUEST_PATH"] == "/amazeballs"
      [302, {"Location" => PHOTOS.sample}, []]
    else
      [302, {"Location" => "/"}, []]
    end
  end

  def index
    @index ||= File.open(__FILE__).read.split(/^__END__/, 2).last
  end
end

__END__
<html>
  <head>
    <title>Amazeballs!</title>
    <style>
      body { margin: 5% auto 0; text-align: center; font-family: sans-serif; }
    </style>
  </head>
  <body>

    <h1>Amazeballs!</h1>
    <img src="/amazeballs">

    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      ga('create', 'UA-41178850-1', 'amazeballs.it');
      ga('send', 'pageview');
    </script>
  </body>
</html>
