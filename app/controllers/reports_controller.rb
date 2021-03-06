# Copyright (c) 2012 Livefront, Inc.  
# See the file license.txt for copying permission.

class ReportsController < ApplicationController

  skip_before_filter :verify_authenticity_token
  
  def create
    recipients = Rails.configuration.recipients
    ReportMailer.report(recipients, params).deliver
    head :ok
  end

end
