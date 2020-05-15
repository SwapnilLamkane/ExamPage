using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamPrototype.Entities
{    
    public class Enums
    {
        public enum RightAns
        {
            AnsA = 1,
            AnsB,
            AnsC,
            AnsD
        }

        public enum StudentAnswerState
        {
            NotViewedYet = 1,
            Attempted,
            NotAttempted,
            ToBeReviewed,
            AttempedAndMarkedForReview
        }
    }
}