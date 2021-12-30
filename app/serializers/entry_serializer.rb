class EntrySerializer < ActiveModel::Serializer
  attributes :id, :date, :declination, :end_time, :filters, :magnification, :notes, :right_ascention, :seeing_conditions, :start_time, :telescope_type, :title, :user_id, :observed_bodies, :images, :location, :user
end
