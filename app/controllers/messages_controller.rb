class MessagesController < ApplicationController
  # before_action :set_data

  def generate
    @response = situations[params['situations'].to_sym]
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
        "Hi <name> - Do you have 15 minutes on <date> at <time> to discuss the project? I'd like to get your buy-in on the goals for this project. ",
      ],
      coworker: [
        "Hey <name>, I know you've been slammed recently, but I wanted to reach out and get a meeting on the books to discuss the project. How does <day> at <time> sound? I'll throw some action items in an agenda for us to discuss. ",
      ],
      employee: [
        "Hey <name>, looked at your calendar and see you have a drop dead date for the launch tomorrow morning. Let's get our ducks in a row tomorrow afternoon so we can gain traction on executing a seamless transition for our bleeding edge product. Get back to me when you are available. Thanks, you rock star.",
        "<name>, circling back on the secret sauce descriptions. When do you have time for a brain dump? Let's get it on the books.",
      ],
      client: [
        "<name>, I am reaching out to you to get a meeting on the books for next steps, optimization synergies, and knowledge transfer for the product. Let's make hay!",
      ]
    }
  end

  def giving_status_update
    {
      boss: [
        "Hey <name> - I wanted to share a brief status update. The project is coming along and the team is giving 110%. We've started to gain traction and take care of some low-hanging fruit. I'll keep you in the loop moving forward but things are looking decent so far. ",
      ],
      coworker: [
        "Hey <name> - it looks like the project is <behind, on time, ahead> of schedule. I'm certain there are still lots of moving parts at this point and I just want to level set expectations. ",
      ],
      employee: [
        "<name>, wanted to let you know our team has been giving it 110% to get our ducks in a row. With laser focus, this killer app will move the goalposts for our competitors as we leapfrog over them.",
        "Hey <name>, here are the key takeaways for the roadmap synergies so we can get some skin in the game for the viral whitepaper; that way we can move the ball forward and get a win-win scenario.",
      ],
      client: [
        "Hey <name>, we have got our ducks in a row to implement disruptive cross-domain analytics analysis for proactive and game-changing optimizations of the workflow pipelines in omni-directional ecosystems. Thoughts?",
      ]
    }    
  end

  def receiving_status_update
    {
      boss: [
        "Thanks <name> for the update. This sounds like a game changer and will definitely help us move the needle with the client. I'll circle back tomorrow with an update after we review key takeaways with the team. ",
      ],
      coworker: [
        "<name> - Thanks for the robust update here. You're a ninja. I'll circle back tomorrow when I have some bandwidth and let you know if I have any follow up questions.",
      ],
      employee: [
        "Hey <name>, thanks for the update and learnings. That ecosystem knowledge transfer will help us level set with accounting so we don't have to be herding cats.",
        "<name>, your granular feedback has sparked new ideation to push the envelope forward and help us get the most bang for the buck.",
      ],
      client: [
        "Hey <name>, thanks for keeping us in the loop. In light of the fact of the latest designs, let's make sure we don't have to put lipstick on a pig.",
      ]
    }    
  end
  
  def running_late  
    {
      boss: [
        "Hey <name> - I'm really sorry, I'm running five minutes late. I got tied up in my previous meeting...it was like trying to herd cats. Going forward, I'll never be late again. "
      ],
      coworker: [
        "<name> - I'm running 10 min late. Sorry. Go ahead and get started without me. No need to punt this meeting.",
      ],
      employee: [
        "Hey <name>, running late to the meeting about core competencies, core values, business models, and frameworks. Go ahead and kickstart the meeting and make sure to be a product evangelist when it comes to the business cases.",
        "Hey <name>, in light of the fact I am running late, I am running late. Go ahead and run it up the flagpole without me.",
      ],
      client: [
        "<name>, my apologies, but I am running late to this preso meeting about gaining traction in new resonant markets. ",
      ]
    }    
  end 

  def get_my_message
    {
      boss: [
        "Hey <name> - I know you are pretty busy today, just wanted to see if you had a chance to review my previous message. I'd love to get your thoughts when you have a chance. If we need to table the conversation to a later time, just let me know. ",
      ],
      coworker: [
        "Hey <name> - Just following up. Did you happen to see my message?",
      ],
      employee: [
        "<name>, just had a aha moment. Did you see my Slack message about the best in breed best practices?",
        "<name>, did you see my message about buy-in for cohorts that raise the bar in various segments?",
      ],
      client: [
        "<name>, at your earliest convenience, would you please confirm you received my message about frictionless processes with all the bells and whistles?",
      ]
    }    
  end
end