# == Route Map
#
#                 Prefix Verb   URI Pattern                          Controller#Action
#                   root GET    /                                    dashboards#index
#                domains GET    /domains(.:format)                   domains#index
#                        POST   /domains(.:format)                   domains#create
#             new_domain GET    /domains/new(.:format)               domains#new
#            edit_domain GET    /domains/:id/edit(.:format)          domains#edit
#                 domain GET    /domains/:id(.:format)               domains#show
#                        PATCH  /domains/:id(.:format)               domains#update
#                        PUT    /domains/:id(.:format)               domains#update
#                        DELETE /domains/:id(.:format)               domains#destroy
#      dashboards_models GET    /dashboards/models(.:format)         dashboards#models
# dashboards_controllers GET    /dashboards/controllers(.:format)    dashboards#controllers
#       dashboards_views GET    /dashboards/views(.:format)          dashboards#views
#       ubiquitous_terms GET    /ubiquitous_terms(.:format)          ubiquitous_terms#index
#                        POST   /ubiquitous_terms(.:format)          ubiquitous_terms#create
#    new_ubiquitous_term GET    /ubiquitous_terms/new(.:format)      ubiquitous_terms#new
#   edit_ubiquitous_term GET    /ubiquitous_terms/:id/edit(.:format) ubiquitous_terms#edit
#        ubiquitous_term GET    /ubiquitous_terms/:id(.:format)      ubiquitous_terms#show
#                        PATCH  /ubiquitous_terms/:id(.:format)      ubiquitous_terms#update
#                        PUT    /ubiquitous_terms/:id(.:format)      ubiquitous_terms#update
#                        DELETE /ubiquitous_terms/:id(.:format)      ubiquitous_terms#destroy
#                reports GET    /reports(.:format)                   reports#index
#                        POST   /reports(.:format)                   reports#create
#             new_report GET    /reports/new(.:format)               reports#new
#            edit_report GET    /reports/:id/edit(.:format)          reports#edit
#                 report GET    /reports/:id(.:format)               reports#show
#                        PATCH  /reports/:id(.:format)               reports#update
#                        PUT    /reports/:id(.:format)               reports#update
#                        DELETE /reports/:id(.:format)               reports#destroy
#      element_pictgrams POST   /pictgrams/element(.:format)         pictgrams#element
#    connector_pictgrams POST   /pictgrams/connector(.:format)       pictgrams#connector
#              pictgrams GET    /pictgrams(.:format)                 pictgrams#index
#                        POST   /pictgrams(.:format)                 pictgrams#create
#           new_pictgram GET    /pictgrams/new(.:format)             pictgrams#new
#          edit_pictgram GET    /pictgrams/:id/edit(.:format)        pictgrams#edit
#               pictgram GET    /pictgrams/:id(.:format)             pictgrams#show
#                        PATCH  /pictgrams/:id(.:format)             pictgrams#update
#                        PUT    /pictgrams/:id(.:format)             pictgrams#update
#                        DELETE /pictgrams/:id(.:format)             pictgrams#destroy
# 

Rails.application.routes.draw do
  root to: 'dashboards#index'

  # ドメイン
  resources :domains
  # ダッシュボード
  namespace :dashboards do
    get 'models'
    get 'controllers'
    get 'views'
  end
  # ユビキタス言語
  resources :ubiquitous_terms
  # レポートの管理
  resources :reports
  # ピクトグラム作成
  resources :pictgrams do
    collection do
      post 'element'
      post 'connector'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
