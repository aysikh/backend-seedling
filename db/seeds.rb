Prompt.destroy_all
Mood.destroy_all
Goal.destroy_all
User.destroy_all
DailyEntry.destroy_all

amy = User.create(
  name: "aymes",
  email: "nugget@gmail.com",
  password: "nugget"
)
BlogPost.create(
  title: "Michelle's 10 Commandments",
  content: "Everyone is fluid, it is unfair to box people in based on fixed opinions including my own self. Defining my own self or others is a cop-out mentality. 
  Always come from a place of love through my thoughts, words, and actions. Detach from anything that feeds the ego and creates space between others
  Nobody owes you anything, it’s better to give and do things without the expectation of something in return. 
  The only control I have in this world is of myself, the way I choose to talk to myself, feed my thoughts and body as well as how I choose to respond or react to the external events. 
  The outer world we experience is a reflection of our own inner world. When we treat ourselves nicely, the world seems kinder. 
  How you do anything is how you do everything. Each decision contributes towards the life I choose to live.
  Be honest with yourself and others and act in accordance with my own personal moral values. 
  As Socrates once said “I know I know nothing.” I believe that we should never lose our inner child. We should always be exploring and asking questions. We are all students of life.
  Where your attention goes, energy flows. The power of attention grows where ever you put it, so it’s important to put it on the things that matter. 
  The only thing that is certain in life is that life is uncertain. I choose to detach myself from expectations and to enjoy each moment of the process/ journey.",
  user_id: amy.id
)

BlogPost.create(
    title: "Dead vs Alive Time",
    content: "Robert Greene explains how there is two different types of time that we spend in our lives which is Dead and Alive time. Dead time is referred to passive/ waiting time while Alive time is referred to when we're utilizing our time through learning and acting. In my own day to day life I spend a decent amount of time commuting or even when I'm getting ready. What I would usually do is listen to music but for the past year I've been really into podcasts and listening to it during my idle time. Instead of making it 'dead time' i've managed to use that time to make it 'alive time.' I've gained many great insights and resources from podcasts and it's a huge bonus that I find them pretty entertaining. Lately I've been into both Duncan Trussell and Joe Rogan's podcasts. There are many other podcasts I enjoy, but those two together and their own podcasts are packed with many different ear nuggets. I feel like I'm the last to get hip with new songs, but I don't feel too bad about it because I get a lot of knowledge from these podcasts which to me is a more valuable tradeoff.",
    user_id: amy.id
)

BlogPost.create(
    title: "The Inspiration",
    content: "Michelle was super big on self development and mental health. No one else wanted us to start meditating and reading as much as she did. We all respected her miracle mornings as she took the time every day to meditate and journal. She always preached her values and principles to her friends. She always saw the good in others and strayed away from negative energy. She wanted all of us to love each other no matter what. This app is for you, boo. ",
    user_id: amy.id
)

BlogPost.create(
    title: "The Secret Formula to the Krabby Patty",
    content: "Nice try.",
    user_id: amy.id
)

BlogPost.create(
    title: "My affirmations",
    content: "I am amazing. I am capable of achieving anything. I am proud of myself.",
    user_id: amy.id
)


prompt1 = Prompt.create(
  statement: "Today, I will...",
  group: "Morning"
)
prompt2 = Prompt.create(
  statement: "What's on my mind right now?",
  group: "Morning"
)
prompt3 = Prompt.create(
  statement: "Let's taco bout it",
  group: "Morning"
)
prompt4 = Prompt.create(
  statement: "Right now I am feeling...",
  group: "Morning"
)
prompt5 = Prompt.create(
  statement: "Today I will challenge myself by...",
  group: "Morning"
)
prompt6 = Prompt.create(
  statement: "I will prioritize myself by...",
  group: "Morning"
)
prompt7 = Prompt.create(
  statement: "I am thankful for...",
  group: "Morning"
)
prompt8 = Prompt.create(
  statement: "I am grateful for...",
  group: "Morning"
)
Prompt.create(
  statement: "Set your intentions for the day. I intend to...",
  group: "Morning"
)
Prompt.create(
  statement: "One thing I will accomplish today...",
  group: "Morning"
)
Prompt.create(
  statement: "I will focus on things that makes me feel good such as...",
  group: "Morning"
)
Prompt.create(
  statement: "Today I am excited for...",
  group: "Morning"
)

Prompt.create(
  statement: "A quality that I admire about myself is...",
  group: "Morning"
)

Prompt.create(
  statement: "Something I can't live without and why?",
  group: "Morning"
)
Prompt.create(
  statement: "Today I promise myself that I will not...",
  group: "Morning"
)

Prompt.create(
  statement: "My motto for today is...",
  group: "Morning"
)

Prompt.create(
  statement: "I am very thankful for...",
  group: "Night"
)
Prompt.create(
  statement: "I am grateful for...",
  group: "Night"
)
Prompt.create(
  statement: "What is an important lesson I've learned today or recently?",
  group: "Night"
)

DailyEntry.create(
    rating: 1,
    content: "Cheers to the beginning of this project",
    user_id: amy.id,
    prompt_id: prompt1.id,
    date: "2020-11-24T09:33:37.107Z"
)
DailyEntry.create(
    rating: 3,
    content: "Thankful for Flatiron",
    user_id: amy.id,
    prompt_id: prompt1.id,
    date: "2020-11-25T09:33:37.107Z"
)
DailyEntry.create(
    rating: 2,
    content: "Who likes turkey anyways....",
    user_id: amy.id,
    prompt_id: prompt5.id,
    date: "2020-11-26T09:33:37.107Z"
    )
DailyEntry.create(
    rating: 4,
    content: "The anxiety is real with this one",
    user_id: amy.id,
    prompt_id: prompt3.id,
    date: "2020-11-27T09:33:37.107Z"
)
DailyEntry.create(
    rating: 5,
    content: "Making some progress on my project! LEGGOOOOO!",
    user_id: amy.id,
    prompt_id: prompt3.id,
    date: "2020-11-28T09:33:37.107Z"
)
DailyEntry.create(
  rating: 4,
  content: "I love my Flatiron Fam",
  user_id: amy.id,
  prompt_id: prompt7.id,
  date: "2020-11-29T09:33:37.107Z"
)
DailyEntry.create(
  rating: 5,
  content: "Thankful for the new friends and amazing experience in this bootcamp. ",
  user_id: amy.id,
  prompt_id: prompt7.id,
  date: "2020-11-30T09:33:37.107Z"
)
DailyEntry.create(
    rating: 2,
    content: "This week is going to be the death of me...on the bright side, Nugget has DOGGLES!",
    user_id: amy.id,
    prompt_id: prompt2.id,
    date: "2020-12-01T09:33:37.107Z"
  )
DailyEntry.create(
  rating: 1,
  content: "WDYM SHOWCASE IS TOMORORW? *HEAVY BREATHING* FULL ON PANIC MODE RIGHT NOW.",
  user_id: amy.id,
  prompt_id: prompt2.id,
  date: "2020-12-02T09:33:37.107Z"
)

Goal.create(
  name: "Increase Happiness"
)
Goal.create(
  name: "Reduce Anxiety"
)
Goal.create(
  name: "Build Self-Esteem"
)
Goal.create(
  name: "Physical Fitness"
)
Goal.create(
  name: "Dietary Health"
)
Goal.create(
  name: "Improve Sleep"
)
Goal.create(
  name: "Manage Stress"
)
Goal.create(
  name: "Improve Productivity"
)