#======================================== QUESTION =============================================
#You have got a good summer internship and want to treat few of your friends for ice-cream. The
#shop had 5 different ice-cream flavors with 4 different sauces available and 2 types of cones
#available viz. waffle cone & cake cone.

#A special summer-bonaza assortment consists of 3 scoops, 2 sauces & 1 cone.
#- How many different options are available for your friends for the special assortment
#- In how-many cases the Scoops and the sauces are all distinct
#- The option of Cake Cone, Chocolate Ice-cream & Chocolate Sauce is forbidden. How many
#options are available in that case


#========================================== SOLUTION ===========================================

IceFlavours = c("Vanilla","Strawberry","Mango","Orange","Chocolate")
IceSauce = c("Chocolate", "Caramel", "Coffee", "Cardamom")
IceCone = c("Waffle-Cone", "Cake-Cone")

#Finding the Combinations

SpAssortment = expand.grid(Scoop1 = IceFlavours, Scoop2 = IceFlavours, 
                           Scoop3 = IceFlavours, Sauce1 = IceSauce, 
                           Sauce2 = IceSauce, Cone = IceCone)


#Getting the numbers
#================================================================================================

#Getting the numbers

dim(SpAssortment)


#================================================================================================
#- Find the cases where the 3-Scoops and 2-Sauces are all distinct


NotDistinctScoops = subset(SpAssortment,((Scoop1==Scoop2)|(Scoop2==Scoop3)|(Scoop3==Scoop1)|
                                           (Sauce1==Sauce2)))

#Finding the Cases where all are distinct

nrow(SpAssortment) - nrow(NotDistinctScoops)



#============================================================================================
#The option of the assortment having all of Cake Cone, Chocolate Ice-cream & Chocolate Sauce is 
#forbidden. How many options are available in that case?


SpAssortment2 = expand.grid(Scoop1 = IceFlavours[which(IceFlavours!='Chocolate')], 
                            Scoop2 = IceFlavours[which(IceFlavours!='Chocolate')], 
                            Scoop3 = IceFlavours[which(IceFlavours!='Chocolate')], 
                            Sauce1 = IceSauce[which(IceSauce!='Chocolate')], 
                            Sauce2 = IceSauce[which(IceSauce!='Chocolate')], 
                            Cone = IceCone[which(IceCone!='Cake-Cone')])

dim(SpAssortment2)
