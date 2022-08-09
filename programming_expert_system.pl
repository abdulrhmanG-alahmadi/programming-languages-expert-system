% written by Abdulrhman Alahmadi

main :-
  start,
  clean,
  decide_language(Language),
  outline(Language), nl.


start :-
  write('best programming language for your needs'), nl,
  write('To give an answer, enter the number displayed next to each option'), nl, nl.


decide_language(Language) :-
  language(Language), !.


% track user progress
:- dynamic(progress/2).

% Clear progress
clean :-
  retract(progress(_, _)),
  fail.
clean.




% Questions for the knowledge base
question(why) :-
  write('Why do you want to learn programming?'), nl.

question(choose_field) :-
  write('Which field?'), nl.

question(which_mobile_os) :-
  write('Which Opreting system?'), nl.

question(web) :-
  write('Which part of the sandwich?'), nl.

question(want_to_work_for) :-
  write('I want to work for...'), nl.

question(think_about_microsoft) :-
  write('What do you think about Microsoft?'), nl.

question(something_new) :-
  write('Do you want to start something different that has a lot of potential but is less mature?'), nl.

question(favourite_toy) :-
  write('Which one is your favourite toy?'), nl.

question(prefer_to_learn) :-
  write('I would rather to learn things...'), nl.

question(transmission) :-
  write('Auto or Manual transmission?'), nl.


% Answers for the knowledge base
answer(meta) :-
  write('Meta').

answer(microsoft) :-
  write('Microsoft').

answer(apple) :-
  write('Apple').

answer(for_my_kids) :-
  write('Teach my kids').

answer(i_dont_know) :-
  write('I don\'t know').

answer(make_money) :-
  write('Make money').

answer(for_fun ) :-
  write('Just for fun').

answer(interested_in) :-
  write('I\'m interested').

answer(self_improvent) :-
  write('Self improvent').

answer(hustle) :-
  write('It really doesn\'t matter; all I want is money.').

answer(gaming) :-
  write('Gaming').

answer(mobile) :-
  write('Mobile').

answer(web) :-
  write('Web').

answer(auto) :-
  write('Auto').

answer(manual) :-
  write('Manual').  

answer(enterprise) :-
  write('Enterprise').

answer(ios) :-
  write('ios').

answer(android) :-
  write('Android').

answer(front_end) :-
  write('Front-end (web interface)').

answer(alphabet ) :-
  write('Alphabet ').

answer(back_end) :-
  write('Back-end ("brain" behind a website)').

answer(startup) :-
  write('Startup').

answer(company) :-
  write('company').

answer(im_a_fan) :-
  write('I\'m a fan!').

answer(not_bad) :-
  write('Not Bad').

answer(trash) :-
  write('trash').

answer(yes) :-
  write('Yes').

answer(no) :-
  write('No').

answer(lego) :-
  write('Lego').

answer(x_o) :-
  write('Tic-tac-toe').

answer(sudoku) :-
  write('sudoku').

answer(easy) :-
  write('Easy mode').

answer(best) :-
  write('Best use of your time').

answer(hard) :-
  write('The hard way').

answer(hell) :-
  write(' you will go through hell and back (but learning other languages will be a pice of cake in the future)').




% Language descriptions for the knowledge base
outline(python) :-
  write('Python'), nl,
  write('Widely regarded as the best programming language for beginners'), nl,
  write('Easiest to learn')nl,
  write('Check out Harvared C50 python course').


outline(java) :-
  write('Java'), nl,
  write('One of the most popular and is very well programming languages'), nl,
  write('Java is platform-independent').

outline(c) :-
  write('C'), nl,
  write('Lingua franca of programming language'), nl,
  write('among the world\'s oldest and most popular languages'), nl,
  write('Check out Harvared C50 course').

outline(cpp) :-
  write('C++'), nl,
  write('A sophisticated C version with many additional features'), nl,
  write('Recommended  if you have a someone to guide you'), nl,
  write('Check out Harvared C50 course').


outline(javascript) :-
  write('JavaScript'), nl,
  write('The most widely used client-side web scripting language'), nl,
  write('A must learn for front-end web developer (you need to learn HTML and CSS of coure)').

outline(csharp) :-
  write('C#'), nl,
  write('A preferred enterprise solution for developing websites and Windows applications with the.NET framework'), nl,
  write('In terms of basic syntax as well as some functionality, it is identical to Java.').

outline(ruby) :-
  write('Ruby'), nl,
  write('has Ruby on Rails, or Rails, which is a server-side web application framework'), nl,
  write('Extremely Secure').

outline(php) :-
  write('PHP'), nl,
  write('Suitable for creating tiny and simple sites in a short period of time.'), nl,
  write('Supported by virtually every web hosting service at a cheaper cost').

outline(objectivec) :-
  write('Objective-C'), nl,
  write('Apple\'s primary language for MacOSX and iOS.'), nl,
  write('Choose this if you only want to work on iOS or OSX apps.').


% Rules for the knowledge base

% python

language(python) :-
  why(for_my_kids).

language(python) :-
  why(i_dont_know).

language(python) :-
  why(make_money),
  choose_field(meta).

language(python) :-
  why(make_money),
  choose_field(alphabet ).  

language(python) :-
  why(make_money),
  choose_field(web),
  web(back_end),
  want_to_work_for(startup),
  something_new(no),
  favourite_toy(lego).

language(python) :-
  why(for_fun ),
  prefer_to_learn(easy).

language(python) :-
  why(for_fun ),
  prefer_to_learn(best).

language(python) :-
  why(interested_in),
  prefer_to_learn(easy).

language(python) :-
  why(interested_in),
  prefer_to_learn(best).  

language(python) :-
  why(self_improvent),
  prefer_to_learn(easy).

language(python) :-
  why(self_improvent),
  prefer_to_learn(best).

% ------------------------------------------------
% java

language(java) :-
  why(make_money),
  choose_field(hustle).

language(java) :-
  why(make_money),
  choose_field(mobile),
  which_mobile_os(android).

language(java) :-
  why(make_money),
  choose_field(web),
  web(back_end),
  want_to_work_for(company),
  think_about_microsoft(not_bad).

language(java) :-
  why(make_money),
  choose_field(web),
  web(back_end),
  want_to_work_for(company),
  think_about_microsoft(trash).

  language(java) :-
  why(make_money),
  want_to_work_for(enterprise),
  think_about_microsoft(not_bad).

language(java) :-
  why(make_money),
  want_to_work_for(enterprise),
  think_about_microsoft(trash).

language(java) :-
  why(for_fun ),
  prefer_to_learn(hard),
  transmission(auto).

language(java) :-
  why(interested_in),
  prefer_to_learn(hard),
  transmission(auto).


language(java) :-
  why(self_improvent),
  prefer_to_learn(hard),
  transmission(auto).
% ------------------------------------------------
% c++  

language(cpp) :-
  why(self_improvent),
  prefer_to_learn(hell).

language(cpp) :-
  why(make_money),
  choose_field(gaming).

language(cpp) :-
  why(interested_in),
  prefer_to_learn(hell).

 language(cpp) :-
  why(for_fun ),
  prefer_to_learn(hell). 

% ------------------------------------------------
% c#
language(csharp) :-
  why(make_money),
  choose_field(microsoft).


language(csharp) :-
  why(make_money),
  choose_field(enterprise),
  think_about_microsoft(im_a_fan).

language(csharp) :-
  why(make_money),
  choose_field(web),
  web(back_end),
  want_to_work_for(company),
  think_about_microsoft(im_a_fan).
% ------------------------------------------------
% objective C  

language(objectivec) :-
  why(make_money),
  choose_field(apple).

language(objectivec) :-
  why(make_money),
  choose_field(mobile),
  which_mobile_os(ios).
% ------------------------------------------------
% javascript

language(javascript) :-
  why(make_money),
  choose_field(web),
  web(front_end).

language(javascript) :-
  why(make_money),
  choose_field(web),
  web(back_end),
  want_to_work_for(startup),
  something_new(yes).


% ------------------------------------------------
% C
language(c) :-
  why(for_fun ),
  prefer_to_learn(hard),
  transmission(manual).

language(c) :-
  why(interested_in),
  prefer_to_learn(hard),
  transmission(manual).

language(c) :-
  why(self_improvent),
  prefer_to_learn(hard),
  transmission(manual).



% ------------------------------------------------
% ruby

language(ruby) :-
  why(make_money),
  choose_field(web),
  web(back_end),
  want_to_work_for(startup),
  something_new(no),
  favourite_toy(x_o).

% ------------------------------------------------  
% php
language(php) :-
  why(make_money),
  choose_field(web),
  web(back_end),
  want_to_work_for(startup),
  something_new(no),
  favourite_toy(sudoku).



% Allocates a knowledge base answer to inquiries.
why(Answer) :-
  progress(why, Answer).
why(Answer) :-
  \+ progress(why, _),
  ask(why, Answer, [for_my_kids, i_dont_know, make_money, for_fun , interested_in, self_improvent]).

choose_field(Answer) :-
  progress(choose_field, Answer).
choose_field(Answer) :-
  \+ progress(choose_field, _),
  ask(choose_field, Answer, [hustle, gaming, mobile, meta, alphabet , microsoft, apple, web, enterprise]).

which_mobile_os(Answer) :-
  progress(which_mobile_os, Answer).
which_mobile_os(Answer) :-
  \+ progress(which_mobile_os, _),
  ask(which_mobile_os, Answer, [ios, android]).

web(Answer) :-
  progress(web, Answer).
web(Answer) :-
  \+ progress(web, _),
  ask(web, Answer, [front_end, back_end]).

favourite_toy(Answer) :-
  progress(favourite_toy, Answer).
favourite_toy(Answer) :-
  \+ progress(favourite_toy, _),
  ask(favourite_toy, Answer, [lego, x_o, sudoku]).

want_to_work_for(Answer) :-
  progress(want_to_work_for, Answer).
want_to_work_for(Answer) :-
  \+ progress(want_to_work_for, _),
  ask(want_to_work_for, Answer, [startup, company]).

think_about_microsoft(Answer) :-
  progress(think_about_microsoft, Answer).
think_about_microsoft(Answer) :-
  \+ progress(think_about_microsoft, _),
  ask(think_about_microsoft, Answer, [im_a_fan, not_bad, trash]).

something_new(Answer) :-
  progress(something_new, Answer).
something_new(Answer) :-
  \+ progress(something_new, _),
  ask(something_new, Answer, [yes, no]).

prefer_to_learn(Answer) :-
  progress(prefer_to_learn, Answer).
prefer_to_learn(Answer) :-
  \+ progress(prefer_to_learn, _),
  ask(prefer_to_learn, Answer, [easy, best, hard, hell]).

transmission(Answer) :-
  progress(transmission, Answer).
transmission(Answer) :-
  \+ progress(transmission, _),
  ask(transmission, Answer, [auto, manual]).


% list of answers
answers([], _).
answers([First|Rest], Index) :-
  write(Index), write(' '), answer(First), nl,
  NextIndex is Index + 1,
  answers(Rest, NextIndex).


% responed with numbers m
parse(0, [First|_], First).
parse(Index, [First|Rest], Response) :-
  Index > 0,
  NextIndex is Index - 1,
  parse(NextIndex, Rest, Response).


% Asks the Question and saves the Answer
ask(Question, Answer, Choices) :-
  question(Question),
  answers(Choices, 0),
  read(Index),
  parse(Index, Choices, Response),
  asserta(progress(Question, Response)),
  Response = Answer.