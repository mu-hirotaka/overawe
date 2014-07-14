class WelcomeController < ApplicationController
  def index
    now = DateTime.now.to_i
    @today_missions = MissionMaster.all.select { |m| (m.opened_at <= now) && (now <= m.closed_at) }
    @recent_missions = MissionMaster.order(id: :desc).limit(4).select { |m| m.closed_at < now }

    @counter = Counter.find_by_id(1)
    if @today_missions.length > 0
      @counter.challenge_num = @counter.challenge_num + 1
      @counter.save
    end
  end
end
