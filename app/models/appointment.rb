class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def appointment_time
    date = self.appointment_datetime
    return date.strftime('%B %e, %Y at %H:%M')
  end
end
