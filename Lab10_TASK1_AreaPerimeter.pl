% Lab10_TASK1_AreaPerimeter.pl - Session 10, Task 1
% Area and perimeter of a square, a rectangle and a triangle.

% The clauses for each shape are grouped together, so tell Prolog
% that area/4 and perimeter/4 are split across the file.
:- discontiguous area/4.
:- discontiguous perimeter/4.

% Square: area = side^2, perimeter = 4 * side
area(square, Side, Area) :-
    Area is Side ^ 2.
perimeter(square, Side, P) :-
    P is Side * 4.

% Rectangle: area = width * height, perimeter = 2 * (width + height)
area(rectangle, W, H, Area) :-
    Area is W * H.
perimeter(rectangle, W, H, P) :-
    P is 2 * W + 2 * H.

% Triangle: area = 1/2 * base * vertical height
area(triangle, Base, Height, Area) :-
    Area is (Base * Height) / 2.

% Triangle: perimeter = a + b + c
perimeter(triangle, A, B, C, P) :-
    P is A + B + C.

% Tests:
% ?- area(square, 4, A).                    A = 16.
% ?- perimeter(square, 4, P).               P = 16.
% ?- area(rectangle, 5, 3, A).              A = 15.
% ?- perimeter(rectangle, 5, 3, P).         P = 16.
% ?- area(triangle, 6, 4, A).               A = 12.
% ?- perimeter(triangle, 3, 4, 5, P).       P = 12.
