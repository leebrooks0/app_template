<% module_namespacing do -%>
Lee custom model
class <%= class_name %> < <%= parent_class_name.classify %>
  acts_as_paranoid
  strip_attributes
  has_paper_trail
<% attributes.select(&:reference?).each do |attribute| -%>
  belongs_to :<%= attribute.name %><%= ', polymorphic: true' if attribute.polymorphic? %>
<% end -%>
<% if attributes.any?(&:password_digest?) -%>
has_secure_password
<% end -%>
end
<% end -%>