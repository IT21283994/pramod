select S.Sname, C.Cname
from Course C, Student S
where S.CID =C.CID 

select S.SID, S.Sname, C.Cname
from Course C, Student S
where S.CID = C.CID

select   O.CID, M.Mname
from   Offers O, Module M
where M.Mcode = O.Mcode

select C.Cname, M.Mname, O.Mcode
from Course C, Module M, Offers O
where O.Mcode = M.Mcode AND C.CID = O.CID 

select S.SID, S.Sname, C.C_fee
from Student S, Course C
where C.C_fee > 100000 AND C.CID = S.CID

select M.Mname
from Module M, Offers O
where O.Accademic_year = 'Y1' AND M.Mcode = O.Mcode AND O.CID= 'IT'



LAB 7

select C.CID, count(S.SID) AS 'No of students'
From Course C, Student S
where C.CID = S.CID
Group by C.CID 

select C.Cname , count(S.SID) AS 'No of students'
From Course C, Student S
where C.CID = S.CID
Group by C.Cname, C.CID

select C.Cname, count(O.Mcode)
from Course C, Offers O
where C.CID= O.CID AND O.Accademic_year ='y1'
Group by C.CID, C.Cname
having count(O.Mcode)>2;

select C.Cname,O.Accademic_year, count(O.Mcode)
from Course C, Offers O
where C.CID= O.CID 
Group by C.CID, C.Cname,O.Accademic_year
having count(O.Mcode)>2
order by count(O.Mcode);
