import cpp

from MacroInvocation x
where x.getMacro().getName().regexpMatch("ntoh(s|l)*")
select x.getExpr()
