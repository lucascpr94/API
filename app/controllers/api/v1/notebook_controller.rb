module Api
      module V1
        class NotebookController < ApplicationController

                  #listar todos os notebooks
                def index
                    notebook = Notebook.order :marca;
                    render json: {status: 'SUCESSO', message:'Lista de notebooks carregados', data:notebook}, status: :ok
                end

                  # Lista de notebooks passando o ID
                def show
                    notebook = Notebook.find(params[:id])
                    render json: {status: 'SUCESSO', message:'Lista de notebooks carregados', data:notebook}, status: :ok
                end

                  # Criar novo notebook
                def create
                    notebook = Notebook.new(notebook_params)
                    if notebook_params.save
                      render json: {status: "SUCESSO",message:"Notebook salvo com sucesso.",data:notebook},status: :ok
                    else
                      render json: {status: "ERRO", message:"Não conseguiu salvar",data:notebook.erros},status: :unprocessable_entity
                end

                # Parametros aceitos
                def notebook_params
                      params.permit(:marca,:valor)
                end
        end
      end
end
