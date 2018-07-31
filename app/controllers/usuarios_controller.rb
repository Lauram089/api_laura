class UsuariosController < ApplicationController

    def index
        @usuarios=Usuario.all
    
    end
    def new
        @usuarios=Usuario.new
    end
    def create
        @usuarios=Usuario.new(user_params)
        if @usuarios.save
            redirect_to usuarios_path
        else 
        render :new

         end
    end
def edit
    @usuarios=Usuario.find(params[:id])
end

def update
    @usuarios=Usuario.find(params[:id])
    if @usuarios.update(user_params)
        redirect_to usuarios_path
    else
        render :edit
    end
end

def delete
    @usuarios=Usuario.find(params[:id])
     @usuarios.destroy
    redirect_to usuarios_path
   
end

 private
    def user_params
        params.require(:usuario).permit(:alias, :nombre, :curso, :area)
    end
end