# frozen_string_literal: true

module Sync
  class OutsmartProjectsController < ApplicationController
    def index
      @projects = Project.all
      @outsmart_projects = Outsmart::Client.new.projects.list
    end

    def show
      @project = Project.find(params[:id])
      @outsmart_project = Outsmart::Client.new.projects.find(@project.outsmart_project_code)
    end

    def edit
      @project = Project.find(params[:id])
    end

    def new
      @project = Project.find(params[:id])
      @outsmart_project = OutsmartProject.new(
        code: @project.id,
        debtor_number: @project.customer.outsmart_debtor_number,
        name: @project.title,
        status: 'Werkvoorbereiding',
        date_start: Date.today,
        active: 1
      )
    end

    def create
      @outsmart_project = OutsmartProject.create(outsmart_project_params.to_hash)
      puts @outsmart_project.inspect
      redirect_to outsmart_projects_path
    end

    def update
      @project = Project.find(params[:id])

      respond_to do |format|
        if @project.update(project_params)
          format.html { redirect_to sync.outsmart_project_path(@project), success: 'Project bijgewerkt' }
        else
          format.html { render :edit, status: :unprocessable_entity }
        end
      end
    end

    def project_params
      params.require(:project).permit(:outsmart_project_code, :title)
    end

    def outsmart_project_params
      params.require(:outsmart_project).permit!
    end
  end
end
