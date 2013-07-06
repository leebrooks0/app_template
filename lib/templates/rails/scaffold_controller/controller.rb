<% if namespaced? -%>
require_dependency "<%= namespaced_file_path %>/application_controller"

<% end -%>
<% module_namespacing do -%>
class <%= controller_class_name %>Controller < ApplicationController

  # GET <%= route_url %>
  def index
    @<%= plural_table_name %> = policy_scope(<%= class_name %>)
  end

  # GET <%= route_url %>/1
  def show
    @<%= singular_table_name %> = get_<%= singular_table_name %>
    authorize @<%= singular_table_name %>
  end

  # GET <%= route_url %>/new
  def new
    @<%= singular_table_name %> = <%= orm_class.build(class_name) %>
    authorize @<%= singular_table_name %>
  end

  # GET <%= route_url %>/1/edit
  def edit
    @<%= singular_table_name %> = get_<%= singular_table_name %>
    authorize @<%= singular_table_name %>
  end

  # POST <%= route_url %>
  def create
    @<%= singular_table_name %> = <%= orm_class.build(class_name, "#{singular_table_name}_params") %>
    authorize @<%= singular_table_name %>

    if @<%= orm_instance.save %>
      redirect_to @<%= singular_table_name %>, notice: <%= "'#{human_name} was successfully created.'" %>
    else
      render action: 'new'
    end
  end

  # PATCH/PUT <%= route_url %>/1
  def update
    @<%= singular_table_name %> = get_<%= singular_table_name %>
    authorize @<%= singular_table_name %>

    if @<%= orm_instance.update("#{singular_table_name}_params") %>
      redirect_to @<%= singular_table_name %>, notice: <%= "'#{human_name} was successfully updated.'" %>
    else
      render action: 'edit'
    end
  end

  # DELETE <%= route_url %>/1
  def destroy
    @<%= singular_table_name %> = get_<%= singular_table_name %>
    authorize @<%= singular_table_name %>

    @<%= orm_instance.destroy %>
    redirect_to <%= index_helper %>_url, notice: <%= "'#{human_name} was successfully destroyed.'" %>
  end

  private
    def get_<%= singular_table_name %>
      <%= orm_class.find(class_name, "params[:id]") %>
    end

    # Only allow a trusted parameter "white list" through.
    def <%= "#{singular_table_name}_params" %>
      params.require(<%= ":#{singular_table_name}" %>).permit(policy(@<%= singular_table_name %>).permitted_attributes)
    end
end
<% end -%>