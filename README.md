A Ruby implementation of a 4-tuple Turing Machine as described in Barker-Plummer, David, "Turing Machines", The Stanford Encyclopedia of Philosophy (Summer 2013 Edition), Edward N. Zalta (ed.), URL = <http://plato.stanford.edu/archives/sum2013/entries/turing-machine/>.

**State Diagram**

![alt text](http://plato.stanford.edu/archives/sum2013/entries/turing-machine/AddOne.gif)

**Sample Execution**

![alt text](http://plato.stanford.edu/archives/sum2013/entries/turing-machine/animated-addone.gif)

```
#<Tape:0x9ae74b0 @tape=[1, 1, 1, 1]>
@0 {s0, 1, s0, »}
@1 {s0, 1, s0, »}
@2 {s0, 1, s0, »}
@3 {s0, 1, s0, »}
@3 {s0, 1, s0, »}
@4 {s0, 0, s1, 1}
@4 {s1, 1, s1, «}
@3 {s1, 1, s1, «}
@2 {s1, 1, s1, «}
@1 {s1, 1, s1, «}
@0 {s1, 1, s1, «}
#<Tape:0x9ae74b0 @tape=[1, 1, 1, 1, 1]>
Halted on cell 0 (tape length 5) after 11 steps.
```
