CM.make "../../sls/sources.cm";
Frontend.init ();
fun HEADING s = print ("\n\n== "^s^" ==\n\n");



HEADING "SECTION 6.1 - Operationalization";

HEADING "Figure 6.1: Natural semantics (left) and ordered abstract machine \
        \(right) for CBV evaluation";
HEADING "Figure 6.1, Left-hand side";
Frontend.reset ();
Frontend.read "#clf \"figure-6.1-a.clf\".";
Frontend.load "exp.sls";
Frontend.read "#operationalize \"cbv-ev-ssos.auto.sls\"\n(ev ~> eval retn).";
Frontend.load "cbv-ev.sls";
Frontend.read "#operationalize stop.";
Frontend.read "#clf stop.";

HEADING "Figure 6.1, Right-hand side";
Frontend.reset ();
Frontend.read "#clf \"figure-6.1-b.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.2: Tail-recursion optimized semantics for CBV evaluation";
Frontend.reset ();
Frontend.read "#clf \"figure-6.2.clf\".";
Frontend.load "exp.sls";
Frontend.load "evalretn.sls";
Frontend.load "cbv-ev-ssos-tail.sls";
Frontend.read "#clf stop.";

HEADING "The automatically derived SSOS semantics should be equivalent to the \
        \tail-recursion optimized version";
Frontend.reset ();
Frontend.read "#clf \"section-6.1-a.clf\".";
Frontend.load "exp.sls";
Frontend.read "#defunctionalize \"cbv-uncurry.auto.sls\" (cont frame : ord).";
Frontend.load "cbv-ev-ssos.auto.sls";
Frontend.read "#defunctionalize stop.";
Frontend.read "#clf stop.";

HEADING "Figure 6.3: Parallel, tail-recursion optimized semantics for CBV \
        \evaluation";
Frontend.reset ();
Frontend.read "#clf \"figure-6.3.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-par.sls";
Frontend.read "#clf stop.";



HEADING "SECTION 6.2 - Defunctionalization";

HEADING "Figure 6.4: Defunctionalization on a nested SLS signature";
HEADING "Figure 6.4, Left-hand side";
Frontend.reset ();
Frontend.read "#clf \"figure-6.4-a.clf\".";
Frontend.read "#defunctionalize \"demonested.auto.sls\" (cont frame : ord).";
Frontend.load "demonested.sls";
Frontend.read "#defunctionalize stop.";
Frontend.read "#clf stop.";

HEADING "Figure 6.4, Right-hand side";
Frontend.reset ();
Frontend.read "#clf \"figure-6.4-b.clf\".";
Frontend.load "demonested.auto.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.5: Uncurried call-by-value evaluation";
Frontend.reset ();
Frontend.read "#clf \"figure-6.5.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-uncurry.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.6: A first order ordered abstract machine semantics for CBV \
        \evaluation";
Frontend.reset ();
Frontend.read "#clf \"figure-6.6.clf\".";
Frontend.load "exp.sls";
Frontend.read "#destadd \"cbv.autodest.sls\" dest.";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.read "#destadd stop.";
Frontend.read "#clf stop.";

HEADING "The automatically derived SSOS should be equivalent to the uncurried \
        \specification in 6.6";
Frontend.reset ();
Frontend.read "#clf \"section-6.2-a.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-uncurry.auto.sls";
Frontend.read "#clf stop.";



HEADING "SECTION 6.3 - Adequacy";

HEADING "Figure 6.7: The generative signature describing states that equal \
        \//s\\\\ for some s";
Frontend.reset ();
(* Generative signatures are not well moded *)
(* Frontend.read "#clf \"figure-6.7.clf\"."; *)
Frontend.load "exp.sls";
Frontend.load "evalretn.sls";
Frontend.read "cont: frame -> prop ord.";
Frontend.load "cbv-ev-ssos-gen.sls";
(* Frontend.read "#clf stop."; *)



HEADING "SECTION 6.4 - Exploring the image of operationalization";

HEADING "Figure 6.8: Semantics of some pure functional features";
HEADING "Figure 6.8, Left-hand side";
Frontend.reset ();
Frontend.read "#clf \"figure-6.8-a.clf\".";
Frontend.load "exp.sls";
Frontend.read "#operationalize \"ssos-ml-core.auto.sls\" (ev ~> eval retn).";
Frontend.load "ev-minml-core.sls";
Frontend.read "#operationalize stop.";
Frontend.read "#clf stop.";

HEADING "Figure 6.8, Right-hand side";
Frontend.reset ();
Frontend.read "#clf \"figure-6.8-b.clf\".";
Frontend.load "exp.sls";
Frontend.load "exp-miniml.sls";
Frontend.read "#destadd \"miniml.autodest.sls\" dest eval retn.";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-minml-core.sls";
Frontend.read "#destadd stop.";
Frontend.read "#clf stop.";

HEADING "The operationalized natural semantics from 6.8";
Frontend.reset ();
Frontend.read "#clf \"section-6.4-a.clf\".";
Frontend.load "exp.sls";
Frontend.read "#defunctionalize \"ssos-ml-core-defun.auto.sls\" (cont frame : \
              \ord).";
Frontend.load "ssos-ml-core.auto.sls";
Frontend.read "#defunctionalize stop.";
Frontend.read "#clf stop.";

HEADING "Defunctionalization should give the right-hand side of 6.8, except \
        \for not making evaluation of pairs parallel.";
Frontend.reset ();
Frontend.read "#clf \"section-6.4-b.clf\".";
Frontend.load "exp.sls";
Frontend.read "#clf stop.";
Frontend.load "ssos-ml-core-defun.auto.sls";

HEADING "Figure 6.9: Semantics of nondeterministic choice";
HEADING "Figure 6.9, Left-hand side (natural semantics)";
Frontend.reset ();
Frontend.read "#clf \"figure-6.9-a.clf\".";
Frontend.load "exp.sls";
Frontend.load "ev.sls";
Frontend.load "cbv-arb.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.9, Right-hand side (ordered abstract machine)";
Frontend.reset ();
Frontend.read "#clf \"figure-6.9-b.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "cbv-arb-ssos.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.10: Problematic semantics of case analysis \
        \(not defunctionalized)";
Frontend.reset ();
Frontend.read "#clf \"figure-6.10.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-minml-case-bad.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.11: Problematic semantics of case analysis \
        \(defunctionalized)";
Frontend.reset ();
Frontend.read "#clf \"figure-6.11.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-minml-case-bad-defun.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.12: Revised semantics of case analysis \
        \(not defunctionalized)";
Frontend.reset ();
Frontend.read "#clf \"figure-6.12.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.read "casen: exp -> exp -> (exp -> exp) -> prop ord.";
Frontend.load "ssos-casen-notdefun.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.13: Revised semantics of case analysis \
        \(defunctionalized)";
Frontend.reset ();
Frontend.read "#clf \"figure-6.13.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.read "casen: exp -> exp -> (exp -> exp) -> prop ord.";
Frontend.load "ssos-casen.sls";
Frontend.read "#clf stop.";



HEADING "SECTION 6.5 - Exploring the richer fragment";

HEADING "Figure 6.14: Semantics of mutable storage";
Frontend.reset ();
Frontend.read "#clf \"figure-6.14.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-mutable.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.16: Semantics of call-by-need recursive suspensions";
Frontend.reset ();
Frontend.read "#clf \"figure-6.16.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-cbneed.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.17: Semantics of call-by-need recursive suspensions, \
        \refunctionalized";
Frontend.reset ();
Frontend.read "#clf \"figure-6.17.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "bindloc.sls";
Frontend.load "ssos-cbneed-refun.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.18: Semantics of lazy call-by-need functions";
Frontend.reset ();
Frontend.read "#clf \"figure-6.18.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-by-need.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.19: Environment semantics for call-by-value functions";
Frontend.reset ();
Frontend.read "#clf \"figure-6.19.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-by-need.sls";
Frontend.load "ssos-by-env.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.20: Semantics of recoverable failure";
Frontend.reset ();
Frontend.read "#clf \"figure-6.20.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-fail.sls";
Frontend.read "#clf stop.";

HEADING "In text: refunctionalized ev/succ";
Frontend.reset ();
Frontend.read "#clf \"section-6.5-a.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.read "error: prop ord.";
Frontend.load "ssos-fail-s-refun.sls";
Frontend.read "#clf stop.";

HEADING "In text: parallel exception handling";
Frontend.reset ();
Frontend.read "#clf \"section-6.5-b.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.read "cont2: frame -> prop ord.";
Frontend.read "error: prop ord.";
Frontend.load "ssos-fail-binary.sls";
Frontend.read "#clf stop.";



HEADING "SECTION 6.6 - Other applications of transformation";

HEADING "Figure 6.21: Backward-chaining logic program for binary addition";
Frontend.reset ();
Frontend.read "#clf \"figure-6.21.clf\".";
Frontend.load "nat.sls";
Frontend.read "#operationalize \"plus.auto.sls\" \
              \(inc ~> inc retn) (plus ~> plus retn).";
Frontend.load "plus.sls";
Frontend.read "#operationalize stop.";
Frontend.read "#clf stop.";

HEADING "Figure 6.22: Forward-chaining logic program for binary addition";
Frontend.reset ();
Frontend.read "#clf \"figure-6.22.clf\".";
Frontend.load "nat.sls";
Frontend.read "frame: type.";
Frontend.read "append0: frame.";
Frontend.read "append1: frame.";
Frontend.read "carry: frame.";
Frontend.load "plus.1.sls";
Frontend.read "#clf stop.";

HEADING "The automatically generated program, \
        \before defunctionalization";
Frontend.reset ();
Frontend.read "#clf \"figure-6.23.clf\".";
Frontend.load "nat.sls";
Frontend.read "#defunctionalize \"plus.autodefun.sls\" (cont frame : ord).";
Frontend.load "plus.auto.sls";
Frontend.read "#defunctionalize stop.";
Frontend.read "#clf stop.";

HEADING "The automatically generated program, \
        \after defunctionalization, equivalent to 6.22";
Frontend.reset ();
Frontend.read "#clf \"section-6.6-a.clf\".";
Frontend.load "nat.sls";
Frontend.load "plus.autodefun.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.23: SOS evaluation";
Frontend.reset ();
Frontend.read "#clf \"figure-6.23.clf\".";
Frontend.load "exp.sls";
Frontend.read "#operationalize \"sos.evsos.auto.sls\" \
              \(evsos ~> eval_sos retn_sos).";
Frontend.load "cbv-sos-b.sls";
Frontend.read "#operationalize stop.";
Frontend.read "#clf stop.";

Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "#operationalize \"sos.step.auto.sls\" \
              \(step ~> decomp plug).";
Frontend.load "cbv-sos-b.sls";
Frontend.read "#operationalize stop.";

HEADING "Figure 6.24: The operationalization of evsos from Figure 6.23";
Frontend.reset ();
Frontend.read "#clf \"figure-6.24.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-sos-step.sls";
Frontend.load "cbv-sos-proc.sls";
Frontend.read "#clf stop.";

HEADING "The output of operationalization of evsos";
Frontend.reset ();
Frontend.read "#clf \"section-6.6-b.clf\".";
Frontend.load "exp.sls";
Frontend.read "#mode value +.";
Frontend.read "#mode step + -.";
Frontend.load "sos.evsos.auto.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.25: This transformation of Figure 6.23 evokes an evaluation \
        \context semantics";
Frontend.reset ();
Frontend.read "#clf \"figure-6.25.clf\".";
Frontend.load "exp.sls";
Frontend.read "#mode value +.";
Frontend.read "value: exp -> prop.";
Frontend.read "cont: frame -> prop ord.";
Frontend.load "cbv-sos-eval-c.sls";
Frontend.read "#clf stop.";

HEADING "The output of operationalization of step";
Frontend.reset ();
Frontend.read "#clf \"section-6.6-c.clf\".";
Frontend.load "exp.sls";
Frontend.read "#defunctionalize \"sos.step.autodefun.sls\" \
              \(cont frame : ord).";
Frontend.read "#mode value +.";
Frontend.read "#mode evsos + -.";
Frontend.load "sos.step.auto.sls";
Frontend.read "#defunctionalize stop.";
Frontend.read "#clf stop.";

HEADING "The output of operationalization+defunctionalization of step";
Frontend.reset ();
Frontend.read "#clf \"section-6.6-d.clf\".";
Frontend.load "exp.sls";
Frontend.read "#mode value +.";
Frontend.read "#mode evsos + -.";
Frontend.load "sos.step.autodefun.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.26: Semantics of partial evaluation for lambda-circle \
        \(lambda calculus fragment)";
Frontend.reset ();
Frontend.read "#clf \"figure-6.26-6.27-a.clf\".";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "lc-ev2.sls";

HEADING "Figure 6.27: Semantics of partial evaluation for lambda-circle \
        \(temporal fragment)";
HEADING "Figure 6.27, Right-hand side";
Frontend.load "lc-ssos-3.sls";
Frontend.read "#clf stop.";

HEADING "Figure 6.27, Left-hand side";
Frontend.reset ();
Frontend.read "#clf \"figure-6.27-b.clf\".";
Frontend.load "exp.sls";
Frontend.load "ev.sls";
Frontend.load "lc-ev2.sls";
Frontend.load "lc-ev3.sls";
Frontend.read "#clf stop.";
