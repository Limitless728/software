def func():
    n1 = input()
    n2 = input()
    n1= n1.split(' ')
    n2 = n2.split(' ')
    l1=[]
    l2=[]
    for w in n1:
        w = int(w)
        l1.append(w)
    n = l1[0]
    x= l1[1]    
    for k in n2:
        k = int(k)
        l2.append(k) 
    ope= 0
    for i in range(len(l2)):
        for j in range(len(l2)) :
            if i<j and l2[i]>=i and l2[j]>=j and l2[i]+l2[j] <=x:
                ope+=1
                  
    print(ope)    
        
        
func()        