--Inserting a new record in the account table.
INSERT INTO public.account
(account_firstname, account_lastname, account_email, account_password)
VALUES
('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

--Updating the account type of Tony record
UPDATE public.account
SET account_type = 'Admin'
WHERE account_firstname = 'Tony'

--Deleting account of Tony from the account table
DELETE FROM public.account
WHERE account_firstname = 'Tony'

--Updating the inv_description
UPDATE public.inventory
SET
	inv_description = REPLACE (inv_description, 'small interiors', 'a huge interior')
WHERE inv_id = 10;

--Using inner join to retrieve data from two table
SELECT inv_make, inv_model, classification.classification_name
FROM public.inventory
INNER JOIN public.classification
	ON classification.classification_id = inventory.classification_id
WHERE classification.classification_name = 'Sport';

--Updating the inv_images and inv_thunbnail path to include /vehicles
UPDATE public.inventory
SET inv_image = REPLACE (inv_image, '/images', '/images/vehicles'),
	inv_thumbnail = REPLACE (inv_thumbnail, '/images', '/images/vehicles');


