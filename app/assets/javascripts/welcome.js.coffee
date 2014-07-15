$ ->
  closed_at = $('div.remain-time').attr('data-remain-time')
  now = getUnixTime()
  remainTime = closed_at - now
  $('span.remain-time-value').text(getFormattedRemainTime(remainTime))
  $('div.remain-time').attr('data-remain-time', remainTime)
  setInterval(countDown, 1000)

countDown = ->
  remainTime = $('div.remain-time').attr('data-remain-time')
  now = getUnixTime()
  nextTime = remainTime - 1
  $('div.remain-time').attr('data-remain-time', nextTime)
  $('span.remain-time-value').text(getFormattedRemainTime(nextTime))

getUnixTime = ->
 parseInt((new Date)/1000)

getFormattedRemainTime = (remainTime) ->
  day = Math.floor(remainTime/(60*60*24))
  remainTime -= day * (60 * 60 * 24)
  hour = Math.floor(remainTime/3600)
  remainTime -= hour * 3600
  min = Math.floor(remainTime/60)
  remainTime -= min * 60
  sec = remainTime
  formatted = ""
  if day > 0
    formatted += day + "日"
    return formatted
  formatted += hour + "時間" if hour > 0
  if min > 0
    formatted += min + "分"
  else if hour > 0
    formatted += min + "分"
  formatted += sec + "秒"
  return formatted
