% Lab10_TASK2_Login.pl - Session 10, Task 2
% Login page with 3 attempts in total (the first one + 2 more).
% Run it with:  ?- login.
% End every input with a full stop, e.g.  ali.   then   1234.

% Dataset: account(Username, Password)
account(ali,  1234).
account(sara, 5678).
account(reem, abc123).

% Start with 3 attempts left.
login :-
    try_login(3).

% No attempts left.
try_login(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.

% Still have attempts: ask for the username and password.
try_login(Left) :-
    Left > 0,
    write('Username: '), nl,
    read(User),
    write('Password: '), nl,
    read(Pass),
    verify(User, Pass, Left).

% Correct.
verify(User, Pass, _) :-
    account(User, Pass),
    write('Login Successful'), nl.

% Wrong: one attempt fewer.
verify(User, Pass, Left) :-
    \+ account(User, Pass),
    write('Login Unsuccessful'), nl,
    NewLeft is Left - 1,
    try_login(NewLeft).
