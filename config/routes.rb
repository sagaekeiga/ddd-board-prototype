# == Route Map
#
#                   Prefix Verb   URI Pattern                          Controller#Action
#                     root GET    /                                    dashboards#index
#                  domains POST   /domains(.:format)                   domains#create
#              edit_domain GET    /domains/:id/edit(.:format)          domains#edit
#                   domain PATCH  /domains/:id(.:format)               domains#update
#                          PUT    /domains/:id(.:format)               domains#update
#        dashboards_models GET    /dashboards/models(.:format)         dashboards#models
# dashboards_architectures GET    /dashboards/architectures(.:format)  dashboards#architectures
#        dashboards_issues GET    /dashboards/issues(.:format)         dashboards#issues
#      dashboards_meetings GET    /dashboards/meetings(.:format)       dashboards#meetings
#     dashboards_documents GET    /dashboards/documents(.:format)      dashboards#documents
#         ubiquitous_terms GET    /ubiquitous_terms(.:format)          ubiquitous_terms#index
#                          POST   /ubiquitous_terms(.:format)          ubiquitous_terms#create
#      new_ubiquitous_term GET    /ubiquitous_terms/new(.:format)      ubiquitous_terms#new
#     edit_ubiquitous_term GET    /ubiquitous_terms/:id/edit(.:format) ubiquitous_terms#edit
#          ubiquitous_term GET    /ubiquitous_terms/:id(.:format)      ubiquitous_terms#show
#                          PATCH  /ubiquitous_terms/:id(.:format)      ubiquitous_terms#update
#                          PUT    /ubiquitous_terms/:id(.:format)      ubiquitous_terms#update
#                          DELETE /ubiquitous_terms/:id(.:format)      ubiquitous_terms#destroy
#                 meetings GET    /meetings(.:format)                  meetings#index
#                          POST   /meetings(.:format)                  meetings#create
#              new_meeting GET    /meetings/new(.:format)              meetings#new
#             edit_meeting GET    /meetings/:id/edit(.:format)         meetings#edit
#                  meeting GET    /meetings/:id(.:format)              meetings#show
#                          PATCH  /meetings/:id(.:format)              meetings#update
#                          PUT    /meetings/:id(.:format)              meetings#update
#                          DELETE /meetings/:id(.:format)              meetings#destroy
#        element_pictgrams POST   /pictgrams/element(.:format)         pictgrams#element
#      connector_pictgrams POST   /pictgrams/connector(.:format)       pictgrams#connector
#                pictgrams GET    /pictgrams(.:format)                 pictgrams#index
#                          POST   /pictgrams(.:format)                 pictgrams#create
#             new_pictgram GET    /pictgrams/new(.:format)             pictgrams#new
#            edit_pictgram GET    /pictgrams/:id/edit(.:format)        pictgrams#edit
#                 pictgram GET    /pictgrams/:id(.:format)             pictgrams#show
#                          PATCH  /pictgrams/:id(.:format)             pictgrams#update
#                          PUT    /pictgrams/:id(.:format)             pictgrams#update
#                          DELETE /pictgrams/:id(.:format)             pictgrams#destroy
#            architectures GET    /architectures(.:format)             architectures#index
#                          POST   /architectures(.:format)             architectures#create
#         new_architecture GET    /architectures/new(.:format)         architectures#new
#        edit_architecture GET    /architectures/:id/edit(.:format)    architectures#edit
#             architecture GET    /architectures/:id(.:format)         architectures#show
#                          PATCH  /architectures/:id(.:format)         architectures#update
#                          PUT    /architectures/:id(.:format)         architectures#update
#                          DELETE /architectures/:id(.:format)         architectures#destroy
#                   issues GET    /issues(.:format)                    issues#index
#                          POST   /issues(.:format)                    issues#create
#                new_issue GET    /issues/new(.:format)                issues#new
#               edit_issue GET    /issues/:id/edit(.:format)           issues#edit
#                    issue GET    /issues/:id(.:format)                issues#show
#                          PATCH  /issues/:id(.:format)                issues#update
#                          PUT    /issues/:id(.:format)                issues#update
#                          DELETE /issues/:id(.:format)                issues#destroy
#                documents GET    /documents(.:format)                 documents#index
#                          POST   /documents(.:format)                 documents#create
#             new_document GET    /documents/new(.:format)             documents#new
#            edit_document GET    /documents/:id/edit(.:format)        documents#edit
#                 document GET    /documents/:id(.:format)             documents#show
#                          PATCH  /documents/:id(.:format)             documents#update
#                          PUT    /documents/:id(.:format)             documents#update
#                          DELETE /documents/:id(.:format)             documents#destroy
#

Rails.application.routes.draw do
  root to: 'dashboards#index'

  # ドメイン
  resources :domains, only: %i(edit update)
  # ダッシュボード
  namespace :dashboards do
    get 'models'
    get 'architectures'
    get 'issues'
    get 'meetings'
    get 'documents'
  end
  # ユビキタス言語
  resources :ubiquitous_terms
  # ミーティングの管理
  resources :meetings
  # ピクトグラム作成
  resources :pictgrams do
    collection do
      post 'element'
      post 'connector'
    end
  end
  # アーキテクチャ
  resources :architectures
  # ISSUE
  resources :issues
  # ドキュメント
  resources :documents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
