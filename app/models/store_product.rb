class StoreProduct < ActiveRecord::Base
	# If the user enters a product it goes into the database and is able to be reviewed by other users.
	# If it is downvoted by 3 different users (does this product and grocery store exist? y/n) then the admin is sent an
	# email to review this product and store. If the product and store was deemed correct the product stays but the
	# ability for users to say y/n this product exists is gone.
	# If 5 users say this product and store exists, an email will be sent to an admin to review this product as
	# permenant and the admin can remove the ability to vote.

	# Is this price correct? Is the tax correct?

	# should the user get a message their product was incorrect? Or voted incorrect and is in review? And possibly
	# be able to prove this store exists?
	# possibly limit number of entries per day and/or per minute

	# The goal is to do your best to not allow the user to have free rein over your database like myfitnesspal aka a
	# cake with 0 carbs... or the like for Grocery Cost App $10,000 cheese cake from Walmart.
	# Let the user do the research for you, and regulate the research for you to extents.

	belongs_to :grocery_list
	belongs_to :store
	belongs_to :product
end
