SevenActionsApp::Application.routes.draw do
  get "actions", :controller => "actions", :action => "index", :as => "action_lists"
  
  get "actions/new", :controller => "actions", :action => "new"
  post "actions", :controller => "actions", :action => "create"
  
  get "actions/:id", :controller => "actions", :action => "show", :as => "action_list"
  get "actions/:id/edit", :controller => "actions", :action => "edit", :as => "action_edit"
  put "actions/:id", :controller => "actions", :action => "update"
  
  delete "actions/:id", :controller => "actions", :action => "destroy", :as => "action_delete"
end
