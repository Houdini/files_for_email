class DataFile < ActiveRecord::Base
  def title; send I18n.locale.to_s + '_title' end
  def description; send I18n.locale.to_s + '_description' end
end
