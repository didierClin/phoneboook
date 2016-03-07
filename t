
[1mFrom:[0m /home/didier/RUBY/phoneboook_1/app/controllers/lists_controller.rb @ line 30 ListsController#create:

    [1;34m26[0m:   [32mdef[0m [1;34mcreate[0m
    [1;34m27[0m:     [1;34m#  binding.pry[0m
    [1;34m28[0m:     @list =[1;34;4mList[0m.new(list_params)
    [1;34m29[0m:       @list.user_id = current_user.id
 => [1;34m30[0m: binding.pry
    [1;34m31[0m:     respond_to [32mdo[0m |format|
    [1;34m32[0m:       [32mif[0m @list.save
    [1;34m33[0m: 
    [1;34m34[0m:         [1;34m# Sends email to user when user is created.[0m
    [1;34m35[0m: 
    [1;34m36[0m: 
    [1;34m37[0m: 
    [1;34m38[0m:         format.html { redirect_to @list, [35mnotice[0m: [31m[1;31m'[0m[31mList was successfully created.[1;31m'[0m[31m[0m }
    [1;34m39[0m:         format.json { render [33m:show[0m, [35mstatus[0m: [33m:created[0m, [35mlocation[0m: @list }
    [1;34m40[0m:       [32melse[0m
    [1;34m41[0m:         format.html { render [33m:new[0m }
    [1;34m42[0m:         format.json { render [35mjson[0m: @list.errors, [35mstatus[0m: [33m:unprocessable_entity[0m }
    [1;34m43[0m:       [32mend[0m
    [1;34m44[0m:     [32mend[0m
    [1;34m45[0m:   [32mend[0m

