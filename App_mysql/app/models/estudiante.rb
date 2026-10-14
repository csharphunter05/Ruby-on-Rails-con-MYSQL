class Estudiante < ApplicationRecord
  validates :nombres, :apellidos, :carrera, :carnet, presence: true
  validates :nombres, length: { maximum: 50 }
  validates :apellidos, length: { maximum: 50 }
  validates :carrera, length: { maximum: 80 }
  validates :carnet, length: { maximum: 20 }, uniqueness: { case_sensitive: false }
  validates :carnet, format: { with: /\A[A-Za-z0-9-]+\z/, message: 'solo puede contener letras, números y guion' }
end
