# Helper: Admin [Tick]
# Ensure Admin Capabilities: Ensures all Players that have Admin are processed special,
# and those that aren't are made sure to not have Admin capabilities in any way (including removing inventory items).

# Has ff_admin_helper book, but not an Admin, remove it!
execute as @a[tag=!ff_admin,nbt={Inventory:[{tag:{ff_admin_helper:1b}}]}] run clear @s minecraft:written_book{ff_admin_helper:1b}
