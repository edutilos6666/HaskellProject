## Tools that were used
<ol>
<li> stack version: Version 1.6.3, Git revision b27e629b8c4ce369e3b8273f04db193b060000db (5454 commits) x86_64 hpack-0.20.0 </li>
<li> ghci version: GHCi, version 8.2.2 </li>
<li> atom with haskell plugins installed </li>
</ol>
###  compiling haskell file inside ghci shell
<pre>
 # enter to the shell
 ghci
 # load file
 :l example1.hs
 # and now we can call all functions that are available in example1.hs
</pre>

### compiling haskell file outside ghci shell
<pre>
 ghc -o example1 example1.hs
 # now run ./example1
 ./example1
</pre>
