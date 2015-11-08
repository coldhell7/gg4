json.array!(@videos) do |video|
  json.extract! video, :id, :skill_video, :exp_video, :edu_video
  json.url video_url(video, format: :json)
end
