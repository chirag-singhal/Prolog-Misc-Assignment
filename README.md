<h1>LOGIC IN COMPUTER SCIENCE</h1>
<h2>CS F214 (2019-20)</h2>

<h3>Prolog Assignment</h3>

<b>Members:-</b>
1. Harshan B		(2018A7PS0166P)
2. Chirag Singhal	(2018A7PS0219P)

____________________________________________________________________________________________________

<h3>INSTRUCTIONS:-</h3>

1. Open the prolog file in either of the directories in SWI-Prolog to read the assertions file.
2. Type the query similar to the example provided for each question given below.
____________________________________________________________________________________________________

<h3>PROBLEM SPECIFICS:-</h3>


<h4>PROBLEM 1: "Ex1.pl"</h4>

* Edit the prolog file to include the weights in the beginning of the file.
* All the inputs to weight clause have to be facts.
* Syntax of adding weights:
    weight(a, b, w)
* Weights from and to the same vertex is not allowed. 
  In such a case, the problem ignores that particular weight.
* Path and L always have to be unbounded, because they will be unified to the required result.
* The two vertices have to be bounded.
* Path and L will contain the desired result.
* Syntax:<br>
    `findPath(a, b, Path, L)`
* Examples:<br>
    `?- findPath(p, r, Path, L)`<br>
    `?- findPath(p, q, Path, L)`


<h4>PROBLEM 2 - (a): "Ex2_1.pl"</h4>

* Assumption: only continuous sublist is found.
* X and Y have to be bounded lists.
* Syntax:<br>
    `sublist(X, Y)`
* Examples:<br>
    `?- sublist([1,2,3], [1,2,3,4])`<br>
    `?- sublist([1,2,3], [1,3,2,3,4])`


<h4>PROBLEM 2 - (b): "Ex2_2.pl"</h4>

* X has to be bounded list.
* Syntax:<br>
    `has_triplicate(X)`
* Examples:<br>
    `?- has_triplicate([1,2,3,1,3,2,1,4,3])`<br>
    `?- has_triplicate([1,2,3,4])`


<h4>PROBLEM 2 - (c): "Ex2_3.pl"</h4>

* N and X have to be bounded and Y has to be unbounded.
* N is an atomic fact and X has to be a list.
* Y will contain the desired result, in a list.
* Syntax:<br>
    `remove_nth(N, X, Y)`
* Examples:<br>
    `?- remove_nth(3, [1,2,3,4,5,6,7], Y)`<br>
    `?- remove_nth(5, [1,2,3,4], Y)`


<h4>PROBLEM 2 - (d): "Ex2_4.pl"</h4>

* X should be bounded list and Y has to be unbounded.
* Y will contain the desired result, in a list.
* Syntax:<br>
    `remove_every_other(X, Y)`
* Examples:<br>
    `?- remove_every_other([1,2,3,4,5], Y)`<br>
    `?- remove_every_other([1,2,3,4,5,6], Y)`

