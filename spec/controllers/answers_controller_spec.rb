require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe AnswersController do

  # This should return the minimal set of attributes required to create a valid
  # Answer. As you add validations to Answer, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "person_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AnswersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all answers as @answers" do
      answer = Answer.create! valid_attributes
      get :index, {}, valid_session
      assigns(:answers).should eq([answer])
    end
  end

  describe "GET show" do
    it "assigns the requested answer as @answer" do
      answer = Answer.create! valid_attributes
      get :show, {:id => answer.to_param}, valid_session
      assigns(:answer).should eq(answer)
    end
  end

  describe "GET new" do
    it "assigns a new answer as @answer" do
      get :new, {}, valid_session
      assigns(:answer).should be_a_new(Answer)
    end
  end

  describe "GET edit" do
    it "assigns the requested answer as @answer" do
      answer = Answer.create! valid_attributes
      get :edit, {:id => answer.to_param}, valid_session
      assigns(:answer).should eq(answer)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Answer" do
        expect {
          post :create, {:answer => valid_attributes}, valid_session
        }.to change(Answer, :count).by(1)
      end

      it "assigns a newly created answer as @answer" do
        post :create, {:answer => valid_attributes}, valid_session
        assigns(:answer).should be_a(Answer)
        assigns(:answer).should be_persisted
      end

      it "redirects to the created answer" do
        post :create, {:answer => valid_attributes}, valid_session
        response.should redirect_to(Answer.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved answer as @answer" do
        # Trigger the behavior that occurs when invalid params are submitted
        Answer.any_instance.stub(:save).and_return(false)
        post :create, {:answer => { "person_id" => "invalid value" }}, valid_session
        assigns(:answer).should be_a_new(Answer)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Answer.any_instance.stub(:save).and_return(false)
        post :create, {:answer => { "person_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested answer" do
        answer = Answer.create! valid_attributes
        # Assuming there are no other answers in the database, this
        # specifies that the Answer created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Answer.any_instance.should_receive(:update).with({ "person_id" => "1" })
        put :update, {:id => answer.to_param, :answer => { "person_id" => "1" }}, valid_session
      end

      it "assigns the requested answer as @answer" do
        answer = Answer.create! valid_attributes
        put :update, {:id => answer.to_param, :answer => valid_attributes}, valid_session
        assigns(:answer).should eq(answer)
      end

      it "redirects to the answer" do
        answer = Answer.create! valid_attributes
        put :update, {:id => answer.to_param, :answer => valid_attributes}, valid_session
        response.should redirect_to(answer)
      end
    end

    describe "with invalid params" do
      it "assigns the answer as @answer" do
        answer = Answer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Answer.any_instance.stub(:save).and_return(false)
        put :update, {:id => answer.to_param, :answer => { "person_id" => "invalid value" }}, valid_session
        assigns(:answer).should eq(answer)
      end

      it "re-renders the 'edit' template" do
        answer = Answer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Answer.any_instance.stub(:save).and_return(false)
        put :update, {:id => answer.to_param, :answer => { "person_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested answer" do
      answer = Answer.create! valid_attributes
      expect {
        delete :destroy, {:id => answer.to_param}, valid_session
      }.to change(Answer, :count).by(-1)
    end

    it "redirects to the answers list" do
      answer = Answer.create! valid_attributes
      delete :destroy, {:id => answer.to_param}, valid_session
      response.should redirect_to(answers_url)
    end
  end

end
