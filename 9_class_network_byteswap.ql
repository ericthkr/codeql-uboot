import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation x |
        x.getMacro().getName().regexpMatch("ntoh(s|l)*") |
        this = x.getExpr()
    )
  } 
}

from NetworkByteSwap n
select n, "Network byte swap"
