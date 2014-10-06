class Amazeballs
  PHOTOS = [
    "https://i.imgur.com/Wm5wzui.png",
    "https://i.imgur.com/bfuK0Zz.png",
    "https://i.imgur.com/SmxFVrk.png",
    "https://i.imgur.com/vs5VwaE.png",
    "https://i.imgur.com/A7qtrnJ.png",
    "https://i.imgur.com/TpQYpt0.png",
    "https://i.imgur.com/c3kqgoH.png",
    "https://i.imgur.com/rte8NaD.png",
    "https://i.imgur.com/F2Hu4En.png",
    "https://i.imgur.com/uSGjEa2.png",
    "https://i.imgur.com/VzFAz4A.png",
    "https://i.imgur.com/4bRCudp.png",
    "https://i.imgur.com/K2cexOw.png",
    "https://i.imgur.com/uVlm31d.png",
    "https://i.imgur.com/8KWUsi1.png",
    "https://i.imgur.com/ODvIcnE.png",
    "https://i.imgur.com/YnDRp3c.png",
    "https://i.imgur.com/qKPEy5e.png",
    "https://i.imgur.com/0HBekYg.png",
    "https://i.imgur.com/5FNOUpM.png"
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
