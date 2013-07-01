AppTemplate::Application.routes.draw do
  resources :leebs

  resources :woofs

  resources :woos

  resources :loos

  resources :jfsdjs

  resources :nits

  resources :lees

  resources :people

  resources :customers

  resources :nitrous

  resources :toos

  resources :toots

  root to: 'pages#root'

  get 'sign_in'  => 'user_sessions#new'
  get 'sign_out' => 'user_sessions#destroy'

  resources :user_sessions, only: [:new, :create, :destroy]

  get 'sign_up' => 'registrations#new'
  post 'sign_up' => 'registrations#create'
  get 'activate/:token' => 'registrations#activate'

  get 'forgotten_password' => 'password_resets#new'
  post 'forgotten_password' => 'password_resets#create'
  get 'reset_password/:token' => 'password_resets#edit'
  patch 'reset_password/:id' => 'password_resets#update'

  resources :users
end

#== Route Map
# Generated on 24 Jun 2013 23:15
#
#          toos GET    /toos(.:format)               toos#index
#               POST   /toos(.:format)               toos#create
#       new_too GET    /toos/new(.:format)           toos#new
#      edit_too GET    /toos/:id/edit(.:format)      toos#edit
#           too GET    /toos/:id(.:format)           toos#show
#               PATCH  /toos/:id(.:format)           toos#update
#               PUT    /toos/:id(.:format)           toos#update
#               DELETE /toos/:id(.:format)           toos#destroy
#       tsgjkls GET    /tsgjkls(.:format)            tsgjkls#index
#               POST   /tsgjkls(.:format)            tsgjkls#create
#    new_tsgjkl GET    /tsgjkls/new(.:format)        tsgjkls#new
#   edit_tsgjkl GET    /tsgjkls/:id/edit(.:format)   tsgjkls#edit
#        tsgjkl GET    /tsgjkls/:id(.:format)        tsgjkls#show
#               PATCH  /tsgjkls/:id(.:format)        tsgjkls#update
#               PUT    /tsgjkls/:id(.:format)        tsgjkls#update
#               DELETE /tsgjkls/:id(.:format)        tsgjkls#destroy
#     hjfkskdfs GET    /hjfkskdfs(.:format)          hjfkskdfs#index
#               POST   /hjfkskdfs(.:format)          hjfkskdfs#create
#  new_hjfkskdf GET    /hjfkskdfs/new(.:format)      hjfkskdfs#new
# edit_hjfkskdf GET    /hjfkskdfs/:id/edit(.:format) hjfkskdfs#edit
#      hjfkskdf GET    /hjfkskdfs/:id(.:format)      hjfkskdfs#show
#               PATCH  /hjfkskdfs/:id(.:format)      hjfkskdfs#update
#               PUT    /hjfkskdfs/:id(.:format)      hjfkskdfs#update
#               DELETE /hjfkskdfs/:id(.:format)      hjfkskdfs#destroy
#      fjksdjfs GET    /fjksdjfs(.:format)           fjksdjfs#index
#               POST   /fjksdjfs(.:format)           fjksdjfs#create
#   new_fjksdjf GET    /fjksdjfs/new(.:format)       fjksdjfs#new
#  edit_fjksdjf GET    /fjksdjfs/:id/edit(.:format)  fjksdjfs#edit
#       fjksdjf GET    /fjksdjfs/:id(.:format)       fjksdjfs#show
#               PATCH  /fjksdjfs/:id(.:format)       fjksdjfs#update
#               PUT    /fjksdjfs/:id(.:format)       fjksdjfs#update
#               DELETE /fjksdjfs/:id(.:format)       fjksdjfs#destroy
#      kjkdjsfs GET    /kjkdjsfs(.:format)           kjkdjsfs#index
#               POST   /kjkdjsfs(.:format)           kjkdjsfs#create
#   new_kjkdjsf GET    /kjkdjsfs/new(.:format)       kjkdjsfs#new
#  edit_kjkdjsf GET    /kjkdjsfs/:id/edit(.:format)  kjkdjsfs#edit
#       kjkdjsf GET    /kjkdjsfs/:id(.:format)       kjkdjsfs#show
#               PATCH  /kjkdjsfs/:id(.:format)       kjkdjsfs#update
#               PUT    /kjkdjsfs/:id(.:format)       kjkdjsfs#update
#               DELETE /kjkdjsfs/:id(.:format)       kjkdjsfs#destroy
#           sts GET    /sts(.:format)                sts#index
#               POST   /sts(.:format)                sts#create
#        new_st GET    /sts/new(.:format)            sts#new
#       edit_st GET    /sts/:id/edit(.:format)       sts#edit
#            st GET    /sts/:id(.:format)            sts#show
#               PATCH  /sts/:id(.:format)            sts#update
#               PUT    /sts/:id(.:format)            sts#update
#               DELETE /sts/:id(.:format)            sts#destroy
#         toots GET    /toots(.:format)              toots#index
#               POST   /toots(.:format)              toots#create
#      new_toot GET    /toots/new(.:format)          toots#new
#     edit_toot GET    /toots/:id/edit(.:format)     toots#edit
#          toot GET    /toots/:id(.:format)          toots#show
#               PATCH  /toots/:id(.:format)          toots#update
#               PUT    /toots/:id(.:format)          toots#update
#               DELETE /toots/:id(.:format)          toots#destroy
#          nits GET    /nits(.:format)               nits#index
#               POST   /nits(.:format)               nits#create
#       new_nit GET    /nits/new(.:format)           nits#new
#      edit_nit GET    /nits/:id/edit(.:format)      nits#edit
#           nit GET    /nits/:id(.:format)           nits#show
#               PATCH  /nits/:id(.:format)           nits#update
#               PUT    /nits/:id(.:format)           nits#update
#               DELETE /nits/:id(.:format)           nits#destroy
#      sherries GET    /sherries(.:format)           sherries#index
#               POST   /sherries(.:format)           sherries#create
#    new_sherry GET    /sherries/new(.:format)       sherries#new
#   edit_sherry GET    /sherries/:id/edit(.:format)  sherries#edit
#        sherry GET    /sherries/:id(.:format)       sherries#show
#               PATCH  /sherries/:id(.:format)       sherries#update
#               PUT    /sherries/:id(.:format)       sherries#update
#               DELETE /sherries/:id(.:format)       sherries#destroy
#         lee1s GET    /lee1s(.:format)              lee1s#index
#               POST   /lee1s(.:format)              lee1s#create
#      new_lee1 GET    /lee1s/new(.:format)          lee1s#new
#     edit_lee1 GET    /lee1s/:id/edit(.:format)     lee1s#edit
#          lee1 GET    /lee1s/:id(.:format)          lee1s#show
#               PATCH  /lee1s/:id(.:format)          lee1s#update
#               PUT    /lee1s/:id(.:format)          lee1s#update
#               DELETE /lee1s/:id(.:format)          lee1s#destroy
#         x_yzs GET    /x_yzs(.:format)              x_yzs#index
#               POST   /x_yzs(.:format)              x_yzs#create
#      new_x_yz GET    /x_yzs/new(.:format)          x_yzs#new
#     edit_x_yz GET    /x_yzs/:id/edit(.:format)     x_yzs#edit
#          x_yz GET    /x_yzs/:id(.:format)          x_yzs#show
#               PATCH  /x_yzs/:id(.:format)          x_yzs#update
#               PUT    /x_yzs/:id(.:format)          x_yzs#update
#               DELETE /x_yzs/:id(.:format)          x_yzs#destroy
#          lees GET    /lees(.:format)               lees#index
#               POST   /lees(.:format)               lees#create
#       new_lee GET    /lees/new(.:format)           lees#new
#      edit_lee GET    /lees/:id/edit(.:format)      lees#edit
#           lee GET    /lees/:id(.:format)           lees#show
#               PATCH  /lees/:id(.:format)           lees#update
#               PUT    /lees/:id(.:format)           lees#update
#               DELETE /lees/:id(.:format)           lees#destroy
#   qunit_rails        /qunit                        Qunit::Rails::Engine
#
# Routes for Qunit::Rails::Engine:
# root GET / qunit/rails/test#index
