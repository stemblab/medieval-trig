 # $\sin(3\theta)=3\sin\theta-4\sin^3\theta$

sin3deg = sin(3*pi/180)
f = (x) -> (sin3deg + 4*x.pow(3))/3

I = [1..6]
x = 0 
approx = (x = f(x) for i in I)

error = approx/sin(pi/180)-1

plot I, 10*log(abs(error))/log(10),
    xlabel: "iteration"
    ylabel: "error (dB)"
    height: 280
    series:
        shadowSize: 0
        color: "green"
        lines: lineWidth: 1
    points:
        show: true
    lines:
        show: true
                        
