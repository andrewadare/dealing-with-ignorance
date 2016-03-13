import GR
using Distributions

x = [linspace(0, 30, 150);]

GR.clearws()
GR.beginprint("gammas.svg")

GR.setviewport(0.05, 0.95, 0.3, 0.95)
GR.setwindow(-0.01, 30., -0.01, 0.7)

GR.settransparency(0.4)
GR.setlinewidth(8)
GR.setlinecolorind(3)

y = [pdf(Gamma(10., 1.), xi) for xi in x]
GR.polyline(x,y)
y = [pdf(Gamma(7, 1.), xi) for xi in x]
GR.polyline(x,y)
y = [pdf(Gamma(4., 1.), xi) for xi in x]
GR.polyline(x,y)

GR.updatews()

GR.endprint()
