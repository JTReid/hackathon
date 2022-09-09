class MessagesController < ApplicationController
  protect_from_forgery with: :null_session

  def generate
    @response = situations[params['situations'].to_sym]

    render json: {
      text: @response
    }.to_json
  end

  def situations
    {
      scheduling_a_meeting: scheduling[params['person'].to_sym].sample,
      giving_status_update: giving_status_update[params['person'].to_sym].sample,
      receiving_status_update: receiving_status_update[params['person'].to_sym].sample,
      running_late: running_late[params['person'].to_sym].sample,
      did_you_see_my_message: get_my_message[params['person'].to_sym].sample
    }
  end

  def scheduling
    {
      boss: [
        "Hi boss man - Do you have 15 minutes to discuss the project? I'd like to get your buy-in on the goals for this project. ",
        "Hoss, I had a aha moment and realized we have to push the ball forward and incentivize users to see our secret sauce and get more conversions.",
        "El Presidente, I had a aha moment and realized we have to push the ball forward and incentivize users to see our secret sauce and get more conversions.",
      ],
      coworker: [
        "Hey champ, I know you've been slammed recently, but I wanted to reach out and get a meeting on the books to discuss the project. How does that sound? I'll throw some action items in an agenda for us to discuss. ",
        "Hey sport, I hope your vacation was relaxing and you got some time to disconnect. When you are back Monday morning, I need to get a half hour on your calendar to sync on all the moving parts of this project. How does 2pm on Wednesday sound?",
        "Squirt, you have time to meet later today for some blue sky thinking around our competitive advantage for disruptive technologies in emergent markets?",
      ],
      employee: [
        "Hey bro, looked at your calendar and see you have a drop dead date for the launch tomorrow morning. Let's get our ducks in a row tomorrow afternoon so we can gain traction on executing a seamless transition for our bleeding edge product. Get back to me when you are available. Thanks, you rock star.",
        "Dude, circling back on the secret sauce descriptions. When do you have time for a brain dump? Let's get it on the books.",
        "Howdy. Do you have some time for a quick sync? We need to align on the common goals for this week's project.",
      ],
      client: [
        "Hoss, I am reaching out to you to get a meeting on the books for next steps, optimization synergies, and knowledge transfer for the product. Let's make hay!",
        "Captain, when would be a good time for you to meet about empowering users for cross-funtional frameworks to level the playing field?",
        "Sir, after our last whiteboarding brain dump session, sir, on pain points, I think we should gain traction ASAP for the deliverables we talked about, sir. What does your schedule look like next week so we can get frictionless buy-in to raise the bar?",
      ]
    }
  end

  def giving_status_update
    {
      boss: [
        "Hey Skipper - I wanted to share a brief status update. The project is coming along and the team is giving 110%. We've started to gain traction and take care of some low-hanging fruit. I'll keep you in the loop moving forward but things are looking decent so far. ",
        "Hey there Boss Man, thought you would like to know the latest on the bells and whistles for users that leverages optimal optimizations to the interface. I hope it doesn't look like lipstick on a pig, but it is what it is.",
      ],
      coworker: [
        "Hey champ - it looks like the project is behind of schedule. I'm certain there are still lots of moving parts at this point and I just want to level set expectations. ",
        "Hey Squirt, we our proud to share that our bleeding edge product has a drop dead date for the new use cases. We are good to go now and think this pushes the envelope forward given all the moving parts.",
      ],
      employee: [
        "Hey bud, wanted to let you know our team has been giving it 110% to get our ducks in a row. With laser focus, this killer app will move the goalposts for our competitors as we leapfrog over them.",
        "Hey sport, here are the key takeaways for the roadmap synergies so we can get some skin in the game for the viral whitepaper; that way we can move the ball forward and get a win-win scenario.",
        "Chief, here are the action items we talked about so we don't have to reinvent the wheel for this use case.",
      ],
      client: [
        "Hey Big Wig, we have got our ducks in a row to implement disruptive cross-domain analytics analysis for proactive and game-changing optimizations of the workflow pipelines in omni-directional ecosystems. Thoughts?",
        "Captain, we are good to go regarding the impact functionality across multiple verticals. We know its like herding cats, but we guesstimate another update by EoD tomorrow.",
      ]
    }    
  end

  def receiving_status_update
    {
      boss: [
        "Thanks Big Cheese for the update. This sounds like a game changer and will definitely help us move the needle with the client. I'll circle back tomorrow with an update after we review key takeaways with the team. ",
        "Thanks for reaching out keeping me in the loop, Boss Man. Way to get on the same page with marketing and raise the bar again.",
      ],
      coworker: [
        "Thanks, friendo, for the robust update here. You're a ninja. I'll circle back tomorrow when I have some bandwidth and let you know if I have any follow up questions.",
        "Bro, your update resonates with our new rock star analyst ninja. Those action items truly are actionable.",
      ],
      employee: [
        "Hey Squirt, thanks for the update and learnings. That ecosystem knowledge transfer will help us level set with accounting so we don't have to be herding cats.",
        "Yo Cupcake, your granular feedback has sparked new ideation to push the envelope forward and help us get the most bang for the buck.",
        "Sport, thanks for the granular high-impact update. I will run this up the flagpole with the team. Thanks.",
      ],
      client: [
        "Hey Skipper, thanks for keeping us in the loop. In light of the fact of the latest designs, let's make sure we don't have to put lipstick on a pig.",
        "Hey Your Ladyship, your update to raise the bar for the business will have a direct impact and value-add to the bottom line. Major ninja move.",
      ]
    }    
  end
  
  def running_late  
    {
      boss: [
        "Hey Sir - I'm really sorry, I'm running five minutes late. I got tied up in my previous meeting...it was like trying to herd cats. Going forward, I'll never be late again. "
        "Sorry for running late, I got caught up in innovative incentivization for impact ideation sessions, again! ",

      ],
      coworker: [
        "Hey Early Bird - I'm running 10 min late. Sorry. Go ahead and get started without me. No need to punt this meeting.",
        "Hey go-getter, I know you have a hard stop, so I am sorry I will be late to the viral price point meeting. ",
      ],
      employee: [
        "Hey Bro, running late to the meeting about core competencies, core values, business models, and frameworks. Go ahead and kickstart the meeting and make sure to be a product evangelist when it comes to the business cases.",
        "Hey champ, in light of the fact I am running late, I am running late. Go ahead and run it up the flagpole without me.",
        "Hey Sport, I will be there in 5 minutes for the holistic secret sauce meeting. Sorry for running late.",
      ],
      client: [
        "Hey Hoss, my apologies, but I am running late to this preso meeting about gaining traction in new resonant markets. ",
        "Captain, sorry, but I am running behind to the action items and innovation meeting. Be there in 5 for the deep dive and drill down.",
      ]
    }    
  end 

  def get_my_message
    {
      boss: [
        "Hey Honcho - I know you are pretty busy today, just wanted to see if you had a chance to review my previous message. I'd love to get your thoughts when you have a chance. If we need to table the conversation to a later time, just let me know. ",
        "Hey, sent you a slack message about reaching out to the team about holistics strategies for robust roadmaps. See it?",
      ],
      coworker: [
        "Hey Squirt - Just following up. Did you happen to see my message?",
        "Sport, curious if you saw my message on the team's outside-the-box solution engineering solutions on low hanging fruit for the project."
      ],
      employee: [
        "Just had a aha moment, Squirt. Did you see my Slack message about the best in breed best practices?",
        "Chief, did you see my message about buy-in for cohorts that raise the bar in various segments?",
        "Hey man, I tried reaching out yesterday about the new killer roadmap to grow the business. Did you see that flawless message I sent you?",
      ],
      client: [
        "Good Sir, at your earliest convenience, would you please confirm you received my message about frictionless processes with all the bells and whistles?",
        "Hey Captain, did you see my message about the best-in-class ninja next steps guide to pushing the envelope with silver bullet strategies?",
      ]
    }    
  end
end