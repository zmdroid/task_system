# coding: utf-8
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :password_confirmation
  ACCESSABLE_ATTRS = [:name, :email_public, :location, :company, :bio, :website, :github, :twitter, :tagline, :avatar, :by, :current_password, :password, :password_confirmation]

  validates :account, :format => {:with => /\A\w+\z/, :message => '只允许数字、大小写字母和下划线'}, :length => {:in => 3..20}, :presence => true, :uniqueness => {:case_sensitive => false}

  belongs_to :role
  belongs_to :userType
end
