class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :total_membership_cost

  #Add up the total cost of an indivdial clients memberships to add to JSON reponse
  def total_membership_cost
    self.object.memberships.sum(:charge)
  end
end
