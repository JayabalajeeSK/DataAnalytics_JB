select *,
case 

	when Category = 'Electronics' 
		then
			case
				when Price>=300 
					then 'Premium Electronics'
				else 'Affordable Electronics'
		    end 

	when Category = 'Furniture' 
		then
			case 
				when Price>=250 
					then 'Premium Furniture'
				else 'Affordable Furniture'
		    end 

    else 
		case 
			when Price>=25 
				then 'Premium Accessories'
			else 'Affordable Accessories'
		end

end as [Groups]
from products
-- ProductID	ProductName	Category	Price	StockQuantity	Supplier	Rating	Groups
-- 1	Wireless Mouse	Electronics	25.99	150	Tech Supplies	4.5	Affordable Electronics
-- 2	Office Chair	Furniture	120.00	85	Comfort Co	4.7	Affordable Furniture
-- 3	Water Bottle	Accessories	15.00	250	AquaGear	4.3	Affordable Accessories
-- 4	Laptop Backpack	Accessories	45.99	200	GearUp	4.6	Premium Accessories
-- 5	Gaming Laptop	Electronics	999.99	45	Tech Supplies	4.8	Premium Electronics
-- 6	Desk Lamp	Furniture	35.00	120	LightHouse	4.2	Affordable Furniture
-- 7	Bluetooth Speaker	Electronics	59.99	95	SoundWave	4.4	Affordable Electronics
-- 8	Standing Desk	Furniture	250.00	50	Comfort Co	4.9	Premium Furniture
-- 9	Fitness Tracker	Electronics	129.99	180	FitTech	4.7	Affordable Electronics
-- 10	Coffee Mug	Accessories	9.99	300	MugMasters	4.1	Affordable Accessories

-------------------------------

--------------Test

select *,
case

	when Category = 'Electronics' 
		then
			case 
				when Price>=300 
					then 'Premium Electronics'
				else 'Affordable Electronics'
		    end 

	when Category = 'Furniture' 
		then
			case 
				when Price>=250 
					then 'Premium Furniture'
				else 'Affordable Furniture'
			end 

    when Category in ('Accessories') 
		then
			case 
				when Price>=25 
					then 'Premium Accessories'
				else 'Affordable Accessories'
			end

end as [Groups]
from products