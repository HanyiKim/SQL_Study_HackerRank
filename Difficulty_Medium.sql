# The PADS

select concat(name,'(',left(occupation,1),')') from occupations order by name
;

select concat('There are a total of ',count(occupation),' ',lower(occupation),'s.')
from occupations group by occupation 
order by count(occupation), occupation
;


# New Companies (unsolved)

select concat(
c.company_code,' ',
founder,' ',
count(lead_manager_code),' ',
count(senior_manager_code),' ',
count(manager_code),' ',
count(employee_code)
)
from
company c right join lead_manager l on c.company_code=l.company_code
right join senior_manager s on l.company_code=s.company_code
right join manager m on s.company_code=m.company_code
right join employee e on m.company_code=e.company_code

group by company_code
order by company_code;
