import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore
import random

cred = credentials.Certificate("machine-status-4713e-977f90b2d894.json")
firebase_admin.initialize_app(cred)
db = firestore.client()

'''def Catalogue_Maker():
  Catalogue=[]
  for i in range(30):
    print("Enter Food",i,"Details")
    name=input("Enter Name")
    price=int(input("Enter Price"))
    Catalogue.append([name,price,])
    print(Catalogue)
'''
Catalogue=[['Snickers', 40, 'snickers.jpg'], ['Munch', 20, 'munch.png'], ['Kitkat', 30, 'kitkat.png'], ['Mars', 40,'mars.png'], ['Silk', 20, 'silk.png'], ['Twix', 63, 'twix.png'], ['Galaxy', 20, 'galaxy.png'], ['Gems', 10, 'gems.png'], ['Lays Blue', 20, 'lays_blue.png'], ['Lays Green', 20, 'lays_green.png'], ['Lays Orange', 20, 'lays_orange.png'], ['Kurkure', 20, 'kurkure.png'], ['Bingo Chips', 20, 'bingo.png'], ['Pop Rings', 20, 'pop_rings.png'], ['Mad Angles', 20, 'mad_angles.png'], ['Hide n Seek', 30, 'hidenseek.png'], ['Bourbon', 25, 'bourbon.png'], ['Good Day', 10, 'goodday.png'], ['Dark Fantasy', 40, 'dark_fantasy.png'], ['Jim Jam', 20, 'jimjam.png'], ['KrackJack', 20, 'krack_jack.png'], ['Monaco', 20, 'monaco.png'], ['Marie Gold', 20, 'marie_gold.png'], ['Coke', 40, 'coke.png'], ['Sprite', 20, 'sprite.png'], ['Limca', 20, 'limca.png'], ['Maaza', 20, 'maaza.png'], ['Thumbs Up', 40, 'thumbs_up.png'], ['Pepsi', 40, 'pepsi.png'], ['Mirinda', 40, 'mirinda.png']]
Status=[True,False,True,True,True,True,True,True,True,True,False,True,True,True,False,True,True,True,True,False]
        
#exit = False
#location=input("Enter location")
#exitloc = False
for i in range(1,6,1):
 location="Location_"+str(i)
 random.shuffle(Catalogue)
 random.shuffle(Status)
 for j in range(1,21,1):
    if(j<10):
      slot="Slot0"+str(j)
    else:
      slot="Slot"+str(j)
    db.collection('Vending_Machines').document(location).collection('items').document(slot).set({'name':Catalogue[j-1][0],'qty':random.randint(0,10),'price':Catalogue[j-1][1],'status':Status[j-1], 'url':Catalogue[j-1][2]})