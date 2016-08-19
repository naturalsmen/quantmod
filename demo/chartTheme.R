# chartTheme demo
# ChuuHsiang Hung 2016

require(quantmod)

chartTheme.demo <- function(x) {
  cat("Please type help('chartTheme') for more information\n")
  theme <- chartTheme(addAroon = list(col = list(aroonUp = "purple",
                                                 aroonDn = "pink",
                                                 aroonOsc = "green")),
                      addBBands = list(col = list(fill="#282828",
                                                  upper="blue",
                                                  lower="blue",
                                                  ma="green"),
                                       lty  = list(upper="dashed",
                                                   lower="dashed",
                                                   ma="dashed")),
                      addCLV = list(col = "red"),
                      addCMO = list(col = "orange"),
                      addChAD = list(col = list(chaikinAD = "pink")),
                      addChVol = list(col = list(chaikinVol = "red")),
                      addEMV = list(col = list(emv = "green", maEMV = "yellow")),
                      addKST = list(col = list(kst = "blue", signal = "green")),
                      addMFI = list(col = "yellow"),
                      addOBV = list(col = "red"),
                      addSMI = list(col = list(smi = "white", signal = "blue")),
                      addTDI = list(col = list(tdi = "yellow", di = "green")),
                      addVolatility = list(col = "red"),
                      addWPR = list(col = "purple"),
                      addZigZag = list(col = "pink"),
                      addMomentum = list(col = "yellow"),
                      addCCI = list(col = "green"),
                      addADX = list(col = list(DIp = "yellow", DIn = "purple", adx = "orange")),
                      addATR = list(col = "pink"),
                      addTRIX = list(col = list(trix = "orange", signal = "yellow")),
                      addRSI = list(col = list(rsi = "red", dot = "white")))
  cat("Set up for indicator colors\n")
  cat("These settings are not default")
  print(theme)
  cat("Use chartTheme(addTA=list(col, ...)) to manage TA colors\n")
  data(ttrc, package="TTR")
  ttrc <- xts(ttrc[,-1], ttrc[,1])
  ttrc <- ttrc["1997::2001"]
  cat("> data(ttrc, package='TTR'')\n> ttrc <- xts(ttrc[,-1], ttrc[,1])\n> 
      ttrc <- ttrc['1997::2001']\n> chartSeries(ttrc)\n")
  chartSeries(ttrc)
  readline("Press <Enter> to continue")
  cat("Now we add indicators:\n\n")
  cat("Add Relative Strength Index (from TTR)\n> addRSI()\n")
  plot(addRSI())
  readline("Press <Enter> to continue")
  cat("Now we pass chartTheme to chartSeries\n")
  cat("> chartSeries(ttrc, theme=chartTheme(addRSI=list(col=list(rsi='red',dot='white'))))\n")
  chartSeries(ttrc, theme=chartTheme(addRSI=list(col=list(rsi="red",dot="white"))))
  readline("Press <Enter> to continue")
  cat("Add Relative Strength Index (from TTR)\n> addRSI()\n")
  plot(addRSI())
  # change theme style
  cat("theme names from .chart.theme\n> names(.chart.theme)\n")
  print(names(.chart.theme))
  readline("Press <Enter> to continue")
  cat("chartSeries(ttrc)\n")
  print(chartSeries(ttrc))
  readline("Press <Enter> to continue")
  cat("Add Bollinger Bands (from TTR)\n> addBBands()")
  plot(addBBands())
  readline("Press <Enter> to continue")
  cat("Using 'white.mono' theme\n\n")
  cat("chartSeries(ttrc, theme=chartTheme('white.mono'))\n")
  print(chartSeries(ttrc, theme=chartTheme('white.mono')))
  readline("Press <Enter> to continue")
  cat("Add Bollinger Bands (from TTR)\n> addBBands()")
  plot(addBBands())

}

chartTheme.demo()
