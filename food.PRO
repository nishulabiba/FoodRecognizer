 domains
    food,indication = symbol
    
    
predicates
    hypothesis(food)
    verify(indication)
    response(char)
    go
clauses
    go :-
        hypothesis(food),
        write("I guess the food is ",food,"."),nl.
        
    go :-
        write("Sorry, I don't seem to be able to"),nl,
        write("Recognize the food"),nl.
        
    verify(asian) :-
        write("Is it  an asian food (y/n) ?"),
        response(Reply),
        Reply='y'.
    
    verify(rice) :-
        write("Does the food contain rice (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(sambal) :-
        write("Does the food has sambal(y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(coconut_milk) :-
        write("Does the food contain coconut_milk (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(veg) :-
        write("Does the food contain vegetables (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(fried) :-
        write("is the food fried (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(noodle) :-
        write("Does the food contain noodle (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(nosoup) :-
        write("Does the food contain no soup (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(chinaorigin) :-
        write("Does the food belong to China (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(eastern) :-
        write("Is it an eastern food (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(usewrap) :-
        write("Does the food served with a wrap (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(meat) :-
        write("Does the food contain meat (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(heavy) :-
        write("Does the food contain heavy portion (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(meatball) :-
        write("Does the food look like meatballs (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(western) :-
        write("Does the food belong to western contries (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(pastry) :-
        write("Does the food contain pastry (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(french) :-
        write("Does the food belong to French (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(bread) :-
        write("Does the food contain bread (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(spicy) :-
        write("Is the food very spicy (y/n) ?"),
        response(Reply),
        Reply='y'.

    verify(italian) :-
        write("Does the food belong to Italy (y/n) ?"),
        response(Reply),
        Reply='y'.

    
    
        
    hypothesis(nasi_lemak ) :-
        verify(asian),
        verify(rice),
        verify(sambal),
        verify(coconut_milk).
    
    hypothesis(fried_rice) :-
        verify( asian),
        verify(veg),
        verify(fried).

 hypothesis(dandan_noodle) :-
        verify(noodle),
        verify(nosoup),
        verify(chinaorigin).

        
 hypothesis(sichuan_noodle) :-
        verify(noodle),
        verify(chinaorigin).

hypothesis(kebab) :-
        verify(eastern),
        verify(usewrap),
        verify(meat).

hypothesis(biriyani) :-
        verify(eastern),
        verify(meat),
        verify(rice),
        verify(heavy).

hypothesis(falafel) :-
        verify(eastern),
        verify(meatball),
        verify(veg).

hypothesis(croissant) :-
        verify(western),
        verify(pastry),
        verify(french).

hypothesis(baguette) :-
        verify(western),
        verify(bread),
        verify(french).

hypothesis(penne) :-
        verify(western),
        verify(spicy),
        verify(italian).



       
    response(Reply) :-
        readchar(Reply),
        write(Reply),nl.

