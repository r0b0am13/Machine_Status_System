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
Catalogue=[['Snickers', 40], ['Munch', 20], ['Kitkat', 30], ['Mars', 40], ['Silk', 20], ['Twix', 63], ['Galaxy', 20], ['Gems', 10], ['Lays Blue', 20], ['Lays Green', 20], ['Lays Orange', 20], ['Kurkure Red', 20], ['Bingo Chips', 20], ['Pop Rings', 20], ['Mad Angles', 20], ['Hide n Seek', 30], ['Bourbon', 25], ['Good Day', 10], ['Dark Fantasy', 40], ['Jim Jam', 20], ['KrackJack', 20], ['Manaco', 20], ['Marie Gold', 20], ['Coke', 40], ['Sprite', 20], ['Limca', 20], ['Maaza', 20], ['Thumbs Up', 40], ['Pepsi', 40], ['Mirinda', 40]]
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
    db.collection('Vending_Machines').document(location).collection('items').document(slot).set({'name':Catalogue[j-1][0],'qty':random.randint(0,10),'price':Catalogue[j-1][1],'status':Status[j-1]})