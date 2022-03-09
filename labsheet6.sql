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
